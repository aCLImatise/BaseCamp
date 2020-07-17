version 1.0

task SimpleOverlap {
  input {
    Boolean? also_show_alignments
    String? maximum_error_rate
    Boolean? input_fasta_file
    String? set_minimum_length
    String? set_verbose_level
    String bank_name
  }
  command <<<
    simple-overlap \
      ~{bank_name} \
      ~{true="-a" false="" also_show_alignments} \
      ~{if defined(maximum_error_rate) then ("-E " +  '"' + maximum_error_rate + '"') else ""} \
      ~{true="-F" false="" input_fasta_file} \
      ~{if defined(set_minimum_length) then ("-o " +  '"' + set_minimum_length + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""}
  >>>
  parameter_meta {
    also_show_alignments: "Also show alignments of overlaps "
    maximum_error_rate: "Maximum error rate for overlaps is <x> e.g., -E 0.06 for 6 0.000000e+00rror rate"
    input_fasta_file: "Input is a fasta file"
    set_minimum_length: "Set minimum overlap length to <n>"
    set_verbose_level: "Set verbose level to <n>.  Higher produces more output."
    bank_name: ""
  }
}