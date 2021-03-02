version 1.0

task SpadesbwaIndex {
  input {
    Int? bwt_construction_algorithm
    String? prefix_of_index
    Boolean? index_files_named
    String bwa
    String index
    String in_dot_fast_a
  }
  command <<<
    spades_bwa index \
      ~{bwa} \
      ~{index} \
      ~{in_dot_fast_a} \
      ~{if defined(bwt_construction_algorithm) then ("-a " +  '"' + bwt_construction_algorithm + '"') else ""} \
      ~{if defined(prefix_of_index) then ("-p " +  '"' + prefix_of_index + '"') else ""} \
      ~{if (index_files_named) then "-6" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bwt_construction_algorithm: "BWT construction algorithm: is or rb2 [auto]"
    prefix_of_index: "prefix of the index [same as fasta name]"
    index_files_named: "index files named as <in.fasta>.64.* instead of <in.fasta>.*"
    bwa: ""
    index: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}