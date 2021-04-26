version 1.0

task PlastomeArchInfopy {
  input {
    File? output_file
    Int? minimum_repeat_length
    String? valid_bases_atgcrmykhbdvatgcrmykhbdv
    String sequences
  }
  command <<<
    plastome_arch_info_py \
      ~{sequences} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(minimum_repeat_length) then ("-r " +  '"' + minimum_repeat_length + '"') else ""} \
      ~{if defined(valid_bases_atgcrmykhbdvatgcrmykhbdv) then ("-v " +  '"' + valid_bases_atgcrmykhbdvatgcrmykhbdv + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    output_file: "output file."
    minimum_repeat_length: "The minimum repeat length treated as the IR region of\\nplastome. Default: [5000]"
    valid_bases_atgcrmykhbdvatgcrmykhbdv: "Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv"
    sequences: "Input fasta format sequences (split the files by spaces)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}