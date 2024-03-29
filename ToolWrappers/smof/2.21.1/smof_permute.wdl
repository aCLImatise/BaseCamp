version 1.0

task SmofPermute {
  input {
    Int? word_size
    Int? start_offset
    Int? end_offset
    String? seed
    String input_fasta_sequence
  }
  command <<<
    smof permute \
      ~{input_fasta_sequence} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""} \
      ~{if defined(start_offset) then ("--start-offset " +  '"' + start_offset + '"') else ""} \
      ~{if defined(end_offset) then ("--end-offset " +  '"' + end_offset + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    word_size: "size of each word (default=1)"
    start_offset: "number of letters to ignore at beginning (default=0)"
    end_offset: "number of letters to ignore at end (default=0)"
    seed: "set random seed (for reproducibility/debugging)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}