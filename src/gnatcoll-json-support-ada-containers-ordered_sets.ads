
with Ada.Containers.Ordered_Sets;
generic
   with package S is new Standard.Ada.Containers.Ordered_Sets (<>);
   use S;

   with function Create (Val : Element_Type) return JSON_Value is <>;
   with function Get (Val : JSON_Value) return Element_Type is <>;

package GNATCOLL.JSON.Support.Ada.Containers.Ordered_Sets is
   function Create (Val : Set) return JSON_Value;
   function Get (Val : JSON_Value) return Set;

   function Get (Val : JSON_Value; Field : UTF8_String) return Set;
   procedure Set_Field  (Val : JSON_Value;  Field_Name : UTF8_String; Field  : Set);

end GNATCOLL.JSON.Support.Ada.Containers.Ordered_Sets;
