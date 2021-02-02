version 1.0

task SnaptoolsIndexgenome {
  input {
    File? input_fast_a
    File? output_prefix
    Int? aligner
    File? path_to_aligner
    Int? num_threads
  }
  command <<<
    snaptools index_genome \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "genome fasta file to build the index from (default:\\nNone)"
    output_prefix: "prefix of indexed file (default: None)"
    aligner: "aligner to use. Currently, snaptools supports bwa,\\nbowtie, bowtie2 and minimap2. (default: bwa)"
    path_to_aligner: "path to fold that contains bwa (default: None)"
    num_threads: "=number of indexing threads (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}