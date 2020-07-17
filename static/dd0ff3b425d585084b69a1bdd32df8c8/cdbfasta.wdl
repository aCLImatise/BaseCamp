version 1.0

task Cdbfasta {
  input {
    String? program_version_exit
    String? o
    String? r
    String fast_a_file
  }
  command <<<
    cdbfasta \
      ~{fast_a_file} \
      ~{if defined(program_version_exit) then ("-v " +  '"' + program_version_exit + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    program_version_exit: "program version and exit"
    o: ""
    r: ""
    fast_a_file: ""
  }
}