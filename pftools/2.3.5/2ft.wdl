version 1.0

task Ft {
  input {
    Boolean? translate_only_reverse
    Boolean? translate_sense_strand
    Boolean? valuespecifies_width_default
  }
  command <<<
    _ft \
      ~{if (translate_only_reverse) then "-r" else ""} \
      ~{if (translate_sense_strand) then "-s" else ""} \
      ~{if (valuespecifies_width_default) then "-W" else ""}
  >>>
  parameter_meta {
    translate_only_reverse: ": translate only reverse (antisense) strand."
    translate_sense_strand: ": translate only sense strand."
    valuespecifies_width_default: "<value>:\\nspecifies the output width (default: 60).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}