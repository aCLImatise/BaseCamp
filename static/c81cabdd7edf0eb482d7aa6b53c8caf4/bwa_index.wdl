version 1.0

task BwaIndex {
  input {
    Int? bwt_construction_algorithm
    String? prefix_of_index
    Int? block_size_bwtsw
    Boolean? index_files_named
    String in_dot_fast_a
  }
  command <<<
    bwa index \
      ~{in_dot_fast_a} \
      ~{if defined(bwt_construction_algorithm) then ("-a " +  '"' + bwt_construction_algorithm + '"') else ""} \
      ~{if defined(prefix_of_index) then ("-p " +  '"' + prefix_of_index + '"') else ""} \
      ~{if defined(block_size_bwtsw) then ("-b " +  '"' + block_size_bwtsw + '"') else ""} \
      ~{if (index_files_named) then "-6" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bwt_construction_algorithm: "BWT construction algorithm: bwtsw, is or rb2 [auto]"
    prefix_of_index: "prefix of the index [same as fasta name]"
    block_size_bwtsw: "block size for the bwtsw algorithm (effective with -a bwtsw) [10000000]"
    index_files_named: "index files named as <in.fasta>.64.* instead of <in.fasta>.*"
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}