
with Ada.Containers.Bounded_Doubly_Linked_Lists;
generic
   with package L is new Standard.Ada.Containers.Bounded_Doubly_Linked_Lists (<>);

   use L;
   with function Create (Val : Element_Type) return JSON_Value is <>;
   with function Get (Val : JSON_Value) return Element_Type is <>;
package GNATCOLL.JSON.Support.Ada.Containers.Bounded_Doubly_Linked_Lists is

   pragma Compile_Time_Error
     (not Bounded_Doubly_Linked_Lists'Library_Level,
      "Bounded_Doubly_Linked_Lists can only be instantiated at library level");

   function Create (Val : List) return JSON_Value;
   function Get (Val : JSON_Value) return List;

   function Get (Val : JSON_Value; Field : UTF8_String) return List;
   procedure Set_Field  (Val : JSON_Value;  Field_Name : UTF8_String; Field  : List);

end GNATCOLL.JSON.Support.Ada.Containers.Bounded_Doubly_Linked_Lists;
