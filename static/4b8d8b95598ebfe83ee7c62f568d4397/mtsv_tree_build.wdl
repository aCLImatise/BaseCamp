version 1.0

task Mtsvtreebuild {
  input {
    Boolean? include_flag_trigger
    File? index
    File? dump
  }
  command <<<
    mtsv_tree_build \
      ~{if (include_flag_trigger) then "-v" else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    index: "Output path to mtsv-inform index file."
    dump: "Path to NCBI taxdump.tar.gz file which matches the given FASTA file."
  }
  output {
    File out_stdout = stdout()
    File out_index = "${in_index}"
  }
}