This library provides a set of utilities for serializing/deseriallizing
Ada Standard containers to/from JSON.
Rev 1.2.0 YYYY-MM-DD
 * Comatible deserialisztion for onedimensional containers.
 *
Rev 1.1.0 2017-04-06
 * Simplify JSON-encoding for onedimensional containers.

Rev 1.0.1 2016-06-14
 * First production revision.

Rev 0.0.6 2016-06-02
 * Initial Version


ToDo:
 * Make compatible deserialisation for maps.
 * Finalize support for multiway_trees.
 * Rewite the crude codegenerator.
 * Add more support packages.
 * Add a YAML parser that works on JSON_Values.
     http://yaml.org/
 * Add a BISON parser that works on JSON_Values.
    http://bsonspec.org/
    This would probably require more Value-types in the GNATCOLL.JSON package.
