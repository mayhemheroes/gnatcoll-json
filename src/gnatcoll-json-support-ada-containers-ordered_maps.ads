with Ada.Containers.Ordered_Maps;
generic
   type Key_Type is private;
   type Element_Type is private;

   with function "<" (Left, Right : Key_Type) return Boolean is <>;
   with function "=" (Left, Right : Element_Type) return Boolean is <>;

   with package V is new Standard.Ada.Containers.Ordered_Maps
     (Key_Type,
      Element_Type,
      "<",
      "=");
   use V;

   with function Create (Val : Key_Type) return JSON_Value is <>;
   with function Get (Val : JSON_Value) return Key_Type is <> with unreferenced;

   with function Get_Name (Val : JSON_Value; Field : UTF8_String) return Key_Type is <>;
   with procedure Set_Field  (Val        : JSON_Value;  Field_Name : UTF8_String; Field  : Key_Type) is <> with unreferenced;

   with function Create (Val : Element_Type) return JSON_Value is <>;
   with function Get (Val : JSON_Value) return Element_Type is <> with unreferenced;

   with function Get_Name (Val : JSON_Value; Field : UTF8_String) return Element_Type is <>;
   with procedure Set_Field  (Val        : JSON_Value;  Field_Name : UTF8_String; Field  : Element_Type) is <> with unreferenced;

package GNATCOLL.JSON.Support.Ada.Containers.Ordered_Maps is
   function Create (Val : Map) return JSON_Value;

   function Get (Val : JSON_Value) return Map;

   function Get (Val : JSON_Value; Field : UTF8_String) return Map;
   procedure Set_Field  (Val : JSON_Value;  Field_Name : UTF8_String; Field  : Map);
private
   type Map_Entry is record
      Key     : Key_Type;
      Element : Element_Type;
   end record;

   function Create (Val : Map_Entry) return JSON_Value;
   function Get (Val : JSON_Value) return Map_Entry;

end GNATCOLL.JSON.Support.Ada.Containers.Ordered_Maps;