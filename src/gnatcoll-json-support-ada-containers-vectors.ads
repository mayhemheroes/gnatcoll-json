with Ada.Containers.Vectors;
generic
   with package V is new Standard.Ada.Containers.Vectors (<>);
   use V;

   with function Create (Val : Element_Type) return JSON_Value is <>;
   with function Get (Val : JSON_Value) return Element_Type is <>;

package GNATCOLL.JSON.Support.Ada.Containers.Vectors is
   function Create (Val : Vector) return JSON_Value;

   function Get (Val : JSON_Value) return Vector;

   function Get (Val : JSON_Value; Field : UTF8_String) return Vector;
   procedure Set_Field  (Val : JSON_Value;  Field_Name : UTF8_String; Field  : Vector);

end GNATCOLL.JSON.Support.Ada.Containers.Vectors;
