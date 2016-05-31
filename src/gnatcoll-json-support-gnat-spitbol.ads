with GNAT.Spitbol;
package GNATCOLL.JSON.Support.GNAT.SPitbol is
   generic

      with package V is new Standard.GNAT.Spitbol.Table (<>);
      use V;
      with function Create (Val : Value_Type) return JSON_Value is <>;
      with function Get (Val : JSON_Value) return Value_Type is <>;
   package JSON_Table is
      pragma Compile_Time_Error
        (not JSON_Table'Library_Level,
         "JSON_Table can only be instantiated at library level");

      function Create (Val : Table) return JSON_Value;
      function Get (Val : GNATCOLL.JSON.JSON_Value) return Table;
      function Get (Val : JSON_Value; Field : UTF8_String) return Table;
      procedure Set_Field  (Val        : JSON_Value;  Field_Name : UTF8_String; Field  : Table);

      function Create (Val : Table_Entry) return JSON_Value;
      function Get (Val : GNATCOLL.JSON.JSON_Value) return Table_Entry;
      function Get (Val : JSON_Value; Field : UTF8_String) return Table_Entry;
      procedure Set_Field  (Val  : JSON_Value;  Field_Name : UTF8_String; Field  : Table_Entry);

      function Create (Val : Table_Array) return JSON_Value;
      function Get (Val : GNATCOLL.JSON.JSON_Value) return Table_Array;
      function Get (Val : JSON_Value; Field : UTF8_String) return Table_Array;
      procedure Set_Field  (Val        : JSON_Value;  Field_Name : UTF8_String; Field  : Table_Array);
   end JSON_Table;
end GNATCOLL.JSON.Support.GNAT.SPitbol;
