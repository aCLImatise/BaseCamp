version 1.0

task MtsvTreeBuild {
  input {
    Boolean? include_flag_trigger
    String? index
    String? dump
  }
  command <<<
    mtsv-tree-build \
      ~{true="-v" false="" include_flag_trigger} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    index: "Output path to mtsv-inform index file."
    dump: "Path to NCBI taxdump.tar.gz file which matches the given FASTA file."
  }
}