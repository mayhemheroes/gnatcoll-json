with GNATCOLL.JSON.Support.GNAT.SPitbol;
use GNATCOLL.JSON;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
package GNAT.Spitbol.Table_VString.JSON is
  new GNATCOLL.JSON.Support.GNAT.SPitbol.JSON_Table
    (V          => GNAT.Spitbol.Table_VString);
