version 1.0

task BiscuitIndex {
  input {
    String? bwt_construction_algorithm
    String? prefix_of_index
    Boolean? index_files_named
  }
  command <<<
    biscuit index \
      ~{if defined(bwt_construction_algorithm) then ("-a " +  '"' + bwt_construction_algorithm + '"') else ""} \
      ~{if defined(prefix_of_index) then ("-p " +  '"' + prefix_of_index + '"') else ""} \
      ~{if (index_files_named) then "-6" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bwt_construction_algorithm: "BWT construction algorithm: bwtsw or is [auto]"
    prefix_of_index: "prefix of the index [same as fasta name]"
    index_files_named: "index files named as <in.fasta>.64.* instead of <in.fasta>.*"
  }
  output {
    File out_stdout = stdout()
  }
}