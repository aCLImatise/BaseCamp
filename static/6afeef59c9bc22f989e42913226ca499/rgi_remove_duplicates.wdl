version 1.0

task RgiRemoveDuplicates {
  input {
    File? input_fasta_file
    File? card_annotation
    File? output_fasta_file
    Boolean? debug
  }
  command <<<
    rgi remove_duplicates \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(card_annotation) then ("--card_annotation " +  '"' + card_annotation + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    input_fasta_file: "input fasta file"
    card_annotation: "card_annotation input fasta file"
    output_fasta_file: "output fasta file"
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}