version 1.0

task Ft {
  input {
    Boolean? translate_reverse_strand
    Boolean? translate_only_sense
    Boolean? valuespecifies_output_width
  }
  command <<<
    _ft \
      ~{if (translate_reverse_strand) then "-r" else ""} \
      ~{if (translate_only_sense) then "-s" else ""} \
      ~{if (valuespecifies_output_width) then "-W" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    translate_reverse_strand: ": translate only reverse (antisense) strand."
    translate_only_sense: ": translate only sense strand."
    valuespecifies_output_width: "<value>:\\nspecifies the output width (default: 60).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}