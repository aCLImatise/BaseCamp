version 1.0

task Simpleoverlap {
  input {
    Boolean? also_show_alignments
    Float? maximum_error_rate
    Boolean? input_fasta_file
    Int? set_minimum_overlap
    String? set_verbose_level
    String bank_name
  }
  command <<<
    simple_overlap \
      ~{bank_name} \
      ~{if (also_show_alignments) then "-a" else ""} \
      ~{if defined(maximum_error_rate) then ("-E " +  '"' + maximum_error_rate + '"') else ""} \
      ~{if (input_fasta_file) then "-F" else ""} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    also_show_alignments: "Also show alignments of overlaps"
    maximum_error_rate: "Maximum error rate for overlaps is <x>\\ne.g., -E 0.06 for 6 6.898821e-310rror rate"
    input_fasta_file: "Input is a fasta file"
    set_minimum_overlap: "Set minimum overlap length to <n>"
    set_verbose_level: "Set verbose level to <n>.  Higher produces more output."
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}