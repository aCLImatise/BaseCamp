version 1.0

task ChorusDraftPrebuild {
  input {
    File? fasta_format_input
    File? fasta_format_output
  }
  command <<<
    ChorusDraftPrebuild \
      ~{if defined(fasta_format_input) then ("--input " +  '"' + fasta_format_input + '"') else ""} \
      ~{if defined(fasta_format_output) then ("--output " +  '"' + fasta_format_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.01--py37hf01694f_0"
  }
  parameter_meta {
    fasta_format_input: "Fasta format input file contains short sequences"
    fasta_format_output: "Fasta format output file with combined long sequences\\nfor speeding up oligo search. (default: output.fa)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fasta_format_output = "${in_fasta_format_output}"
  }
}