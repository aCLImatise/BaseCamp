version 1.0

task Strlingoutlierspy {
  input {
    Array[String] unplaced
    Array[String] genotype_dot_txt
    String? unplaced_dot_txt
    String? out
    File? control
    File? emit
    String? slop
    Int? min_clips
    Int? min_size
    String str_ling_dot
  }
  command <<<
    strling_outliers_py \
      ~{str_ling_dot} \
      ~{if defined(unplaced) then ("--unplaced " +  '"' + unplaced + '"') else ""} \
      ~{if defined(genotype_dot_txt) then ("-genotype.txt " +  '"' + genotype_dot_txt + '"') else ""} \
      ~{if defined(unplaced_dot_txt) then ("-unplaced.txt " +  '"' + unplaced_dot_txt + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(emit) then ("--emit " +  '"' + emit + '"') else ""} \
      ~{if defined(slop) then ("--slop " +  '"' + slop + '"') else ""} \
      ~{if defined(min_clips) then ("--min_clips " +  '"' + min_clips + '"') else ""} \
      ~{if defined(min_size) then ("--min_size " +  '"' + min_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/strling:0.4.1--hbeb723e_1"
  }
  parameter_meta {
    unplaced: "[--out OUT]"
    genotype_dot_txt: "for all samples produced by"
    unplaced_dot_txt: "for all samples produced by"
    out: "Prefix for all output files (suffix will be STRs.tsv)\\n(default: )"
    control: "Input file for median and standard deviation estimates\\nat each locus from a set of control samples. This file\\ncan be produced by this script using the emit option.\\nIf this option is not set, all samples in the current\\nbatch will be used as controls by default."
    emit: "Output file for median and standard deviation\\nestimates at each locus (tsv)."
    slop: "Merge loci that are within this many bp of each other\\nand have the same repeat unit."
    min_clips: "In the individual sample files, only report loci with\\nat least many soft-cliped reads in that sample."
    min_size: "In the individual sample files, only report loci with\\nat least this allele2_est size in that sample.\\n"
    str_ling_dot: "--unplaced UNPLACED [UNPLACED ...]"
  }
  output {
    File out_stdout = stdout()
    File out_emit = "${in_emit}"
  }
}