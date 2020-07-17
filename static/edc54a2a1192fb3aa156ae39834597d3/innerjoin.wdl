version 1.0

task Innerjoin {
  input {
    String? empty
    String? main_fields
    String? lookup_fields
    String? option
  }
  command <<<
    innerjoin \
      ~{option} \
      ~{if defined(empty) then ("--empty " +  '"' + empty + '"') else ""} \
      ~{if defined(main_fields) then ("--main-fields " +  '"' + main_fields + '"') else ""} \
      ~{if defined(lookup_fields) then ("--lookup-fields " +  '"' + lookup_fields + '"') else ""}
  >>>
  parameter_meta {
    empty: "replace missing input fields with EMPTY"
    main_fields: "join on these FIELDS of MAIN-TABLE"
    lookup_fields: "join on these FIELDS of LOOKUP-TABLE"
    option: ""
  }
}