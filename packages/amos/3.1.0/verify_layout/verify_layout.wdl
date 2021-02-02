version 1.0

task Verifylayout {
  input {
    String? verbose
    String bank_name
  }
  command <<<
    verify_layout \
      ~{bank_name} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "the coordinates and bases for each read in layout\\nreadid rc offset roffset len bases\\n"
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}