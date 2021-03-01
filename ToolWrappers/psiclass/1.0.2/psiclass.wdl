version 1.0

task Psiclass {
  input {
    String? paths_alignment_bam
    File? path_trusted_used
    String? prefix_output_files
    Int? number_processesthreads_default
    Float? only_use_subexons
    Float? sa
    Float? vd
    Boolean? max_dp_constraint_size
    File? bam_group
    Boolean? primary_paralog
    Int? stage
    String or
  }
  command <<<
    psiclass \
      ~{or} \
      ~{if defined(paths_alignment_bam) then ("-b " +  '"' + paths_alignment_bam + '"') else ""} \
      ~{if defined(path_trusted_used) then ("-s " +  '"' + path_trusted_used + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(number_processesthreads_default) then ("-p " +  '"' + number_processesthreads_default + '"') else ""} \
      ~{if defined(only_use_subexons) then ("-c " +  '"' + only_use_subexons + '"') else ""} \
      ~{if defined(sa) then ("--sa " +  '"' + sa + '"') else ""} \
      ~{if defined(vd) then ("--vd " +  '"' + vd + '"') else ""} \
      ~{if (max_dp_constraint_size) then "--maxDpConstraintSize" else ""} \
      ~{if defined(bam_group) then ("--bamGroup " +  '"' + bam_group + '"') else ""} \
      ~{if (primary_paralog) then "--primaryParalog" else ""} \
      ~{if defined(stage) then ("--stage " +  '"' + stage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0"
  }
  parameter_meta {
    paths_alignment_bam: ": paths to the alignment BAM files. Use comma to separate multiple BAM files"
    path_trusted_used: ": path to the trusted splice file (default: not used)"
    prefix_output_files: ": prefix of output files (default: ./psiclass)"
    number_processesthreads_default: ": number of processes/threads (default: 1)"
    only_use_subexons: ": only use the subexons with classifier score <= than the given number (default: 0.05)"
    sa: ": the minimum average number of supported read for retained introns (default: 0.5)"
    vd: ": the minimum average coverage depth of a transcript to be reported (defaults: 1.0)"
    max_dp_constraint_size: ": the number of subexons a constraint can cover in DP. (default: 7. -1 for inf)"
    bam_group: ": path to the file listing the group id of BAMs in the --lb file (default: not used)"
    primary_paralog: ": use primary alignment to retain paralog genes (default: use unique alignments)"
    stage: ":  (default: 0)\\n0-start from beginning - building splice sites for each sample\\n1-start from building subexon files for each sample\\n2-start from combining subexon files across samples\\n3-start from assembling the transcripts for each sample\\n4-start from voting the consensus transcripts across samples\\n"
    or: "--lb STRING: path to the file listing the alignments BAM files"
  }
  output {
    File out_stdout = stdout()
  }
}