with Ada.Text_IO.Text_Streams;
with Ada.Directories;
with Ada.Strings.Maps;
package body GNATCOLL.JSON.Support.Test.Utilities is

   use Ada.Text_IO;
   use Ada.Directories;
   use Ada.Strings.Maps;
   use Ada.Strings.Fixed;
   -----------
   -- Write --
   -----------

   procedure Write (Path : String; Item : String) is
      Dir : constant String := Containing_Directory (Path);
      F   : Ada.Text_IO.File_Type;
   begin
      if not Exists (Dir) then
         Create_Path (Dir);
      end if;
      Create (F, Out_File, Path);
      String'Write (Text_Streams.Stream (F), Item);
      Close (F);
   end Write;

   ----------
   -- Read --
   ----------
   function Read (Path : String) return String is
      F   : Ada.Text_IO.File_Type;
   begin
      return Item : String (1 .. Natural (Size (Path))) do
         Open (F, In_File, Path);
         String'Read (Text_Streams.Stream (F), Item);
         Close (F);
      end return;
   end Read;

   Ada2file_Mapping : constant Character_Mapping :=
                        To_Mapping ("ABCDEFGHIJKLMNOPQRSTUVWXYZ.",
                                    "abcdefghijklmnopqrstuvwxyz-");
   procedure Clean is
   begin
      Delete_Directory ("output");
   exception
      when others => null;
   end Clean;

   function Ada2file (Item : String) return String is
   begin
      return Compose ("output", Translate (Item, Ada2file_Mapping) & ".json");
   end Ada2file;

   function Read_Json_Value (From_Path : String) return JSON_Value is
   begin
      return Read (Read (From_Path), From_Path);
   end Read_Json_Value;
end GNATCOLL.JSON.Support.Test.Utilities;
