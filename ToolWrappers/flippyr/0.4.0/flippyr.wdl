version 1.0

task Flippyr {
  input {
    Boolean? silent
    Boolean? plink
    String? plink_mem
    File? output_prefix
    File? output_suffix
    Boolean? keep_multi_allelic
    Boolean? keep_indels
    String fast_a
    String fileset
  }
  command <<<
    flippyr \
      ~{fast_a} \
      ~{fileset} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (plink) then "--plink" else ""} \
      ~{if defined(plink_mem) then ("--plinkMem " +  '"' + plink_mem + '"') else ""} \
      ~{if defined(output_prefix) then ("--outputPrefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_suffix) then ("--outputSuffix " +  '"' + output_suffix + '"') else ""} \
      ~{if (keep_multi_allelic) then "--keepMultiallelic" else ""} \
      ~{if (keep_indels) then "--keepIndels" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flippyr:0.4.0--pyh3252c3a_0"
  }
  parameter_meta {
    silent: "Supress output to stdout."
    plink: "Run the plink command."
    plink_mem: "Set the memory limit for plink."
    output_prefix: "Change output file prefix."
    output_suffix: "Change output file suffix for plink file."
    keep_multi_allelic: "Do not delete multiallelic sites."
    keep_indels: "Do not delete insertions/deletions."
    fast_a: "Fasta file containing all chromosomes in the plink"
    fileset: "bim                   .bim file from binary plink fileset."
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
    File out_output_suffix = "${in_output_suffix}"
  }
}