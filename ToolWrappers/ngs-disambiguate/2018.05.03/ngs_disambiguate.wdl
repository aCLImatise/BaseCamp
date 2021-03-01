version 1.0

task NgsDisambiguate {
  input {
    Boolean? no_sort
    String? prefix
    Directory? output_dir
    Int? aligner
    String a
  }
  command <<<
    ngs_disambiguate \
      ~{a} \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_sort: "(Deprecated option for backwards compatibility)"
    prefix: "(required)  Sample ID or name used as prefix. Do not include .bam"
    output_dir: "(required)  Output directory"
    aligner: "Aligner option {tophat(default),hisat2,bwa,star}"
    a: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}