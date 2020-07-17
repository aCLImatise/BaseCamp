version 1.0

task Verse {
  input {
    Boolean? output_version_program
    Boolean? show_details_running
    String? a
    String? o
    String input_file
  }
  command <<<
    verse \
      ~{input_file} \
      ~{true="-v" false="" output_version_program} \
      ~{true="-Z" false="" show_details_running} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    output_version_program: "Output version of the program."
    show_details_running: "Show details about the running mode or scheme."
    a: ""
    o: ""
    input_file: ""
  }
}