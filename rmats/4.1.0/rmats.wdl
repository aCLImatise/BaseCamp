version 1.0

task Rmats.py {
  input {
    String? gtf
    String? bone
    String? b_two
    String? s_one
    String? s_two
    String? od
    String? tmp
    String? type_read_used
    String? lib_type
    String? read_length
    Boolean? variable_read_length
    String? anchor_length
    String? top_hat_anchor
    String? bi
    String? n_thread
    String? t_stat
    String? cst_at
    String? specify_steps_prep
    Boolean? stat_off
    Boolean? paired_stats
    Boolean? novels_s
    String? mil
    String? mel
  }
  command <<<
    rmats.py \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(od) then ("--od " +  '"' + od + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(type_read_used) then ("-t " +  '"' + type_read_used + '"') else ""} \
      ~{if defined(lib_type) then ("--libType " +  '"' + lib_type + '"') else ""} \
      ~{if defined(read_length) then ("--readLength " +  '"' + read_length + '"') else ""} \
      ~{true="--variable-read-length" false="" variable_read_length} \
      ~{if defined(anchor_length) then ("--anchorLength " +  '"' + anchor_length + '"') else ""} \
      ~{if defined(top_hat_anchor) then ("--tophatAnchor " +  '"' + top_hat_anchor + '"') else ""} \
      ~{if defined(bi) then ("--bi " +  '"' + bi + '"') else ""} \
      ~{if defined(n_thread) then ("--nthread " +  '"' + n_thread + '"') else ""} \
      ~{if defined(t_stat) then ("--tstat " +  '"' + t_stat + '"') else ""} \
      ~{if defined(cst_at) then ("--cstat " +  '"' + cst_at + '"') else ""} \
      ~{if defined(specify_steps_prep) then ("--task " +  '"' + specify_steps_prep + '"') else ""} \
      ~{true="--statoff" false="" stat_off} \
      ~{true="--paired-stats" false="" paired_stats} \
      ~{true="--novelSS" false="" novels_s} \
      ~{if defined(mil) then ("--mil " +  '"' + mil + '"') else ""} \
      ~{if defined(mel) then ("--mel " +  '"' + mel + '"') else ""}
  >>>
  parameter_meta {
    gtf: "An annotation of genes and transcripts in GTF format"
    bone: "A text file containing a comma separated list of the BAM files for sample_1. (Only if using BAM)"
    b_two: "A text file containing a comma separated list of the BAM files for sample_2. (Only if using BAM)"
    s_one: "A text file containing a comma separated list of the FASTQ files for sample_1. If using paired reads the format is \":\" to separate pairs and \",\" to separate replicates. (Only if using fastq)"
    s_two: "A text file containing a comma separated list of the FASTQ files for sample_2. If using paired reads the format is \":\" to separate pairs and \",\" to separate replicates. (Only if using fastq)"
    od: "The directory for final output"
    tmp: "The directory for intermediate output such as \".rmats\" files from the prep step"
    type_read_used: "Type of read used in the analysis: either \"paired\" for paired-end data or \"single\" for single-end data. Default: paired"
    lib_type: "Library type. Use fr-firststrand or fr-secondstrand for strand-specific data. Default: fr-unstranded"
    read_length: "The length of each read"
    variable_read_length: "Allow reads with lengths that differ from --readLength to be processed. --readLength will still be used to determine IncFormLen and SkipFormLen"
    anchor_length: "The anchor length. Default is 1"
    top_hat_anchor: "The \"anchor length\" or \"overhang length\" used in the aligner. At least \"anchor length\" NT must be mapped to each end of a given junction. The default is 6. (Only if using fastq)"
    bi: "The directory name of the STAR binary indices (name of the directory that contains the SA file). (Only if using fastq)"
    n_thread: "The number of threads. The optimal number of threads should be equal to the number of CPU cores. Default: 1"
    t_stat: "The number of threads for the statistical model. Default: 1"
    cst_at: "The cutoff splicing difference. The cutoff used in the null hypothesis test for differential splicing. The default is 0.0001 for 0.01% difference. Valid: 0 <= cutoff < 1. Does not apply to the paired stats model"
    specify_steps_prep: "Specify which step(s) of rMATS to run. Default: both. prep: preprocess BAMs and generate a .rmats file. post: load .rmats file(s) into memory, detect and count alternative splicing events, and calculate P value (if not --statoff). both: prep + post. inte (integrity): check that the BAM filenames recorded by the prep task(s) match the BAM filenames for the current command line"
    stat_off: "Skip the statistical analysis"
    paired_stats: "Use the paired stats model"
    novels_s: "Enable detection of novel splice sites (unannotated splice sites). Default is no detection of novel splice sites"
    mil: "Minimum Intron Length. Only impacts --novelSS behavior. Default: 50"
    mel: "Maximum Exon Length. Only impacts --novelSS behavior. Default: 500"
  }
}