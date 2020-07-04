version 1.0

task BamSplit.pl {
  input {
    Boolean? bam
    Boolean? bed
    Boolean? bw
    Boolean? bw_dir
    Boolean? cs
    Boolean? norm
    Boolean? out
    Boolean? reverse
    Boolean? scale
    Boolean? uniq
    Boolean? log
    Boolean? man
  }
  command <<<
    bam_split.pl \
      ~{true="--bam" false="" bam} \
      ~{true="--bed" false="" bed} \
      ~{true="--bw" false="" bw} \
      ~{true="--bwdir" false="" bw_dir} \
      ~{true="--cs" false="" cs} \
      ~{true="--norm" false="" norm} \
      ~{true="--out" false="" out} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--scale" false="" scale} \
      ~{true="--uniq" false="" uniq} \
      ~{true="--log" false="" log} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bam: "Input file in BAM format"
    bed: "Create a BED6 file for each split BAM file"
    bw: "Create BedGraph and bigWig coverage files for e.g. genome browser visualization."
    bw_dir: "Directory name for resulting bigWig files. This directory is created as subdirectory of the output directory. Default is 'vis'."
    cs: "Chromosome sizes file (required if --bw is given)."
    norm: "Normalize resulting bigWig files"
    out: "Output directory"
    reverse: "Reverse the +/- strand mapping. This is required to achieve proper strand assignments for certain RNA-seq library preparation protocol."
    scale: "If --bw is given, scale bigWig files to this number. Default is 1000000."
    uniq: "Filter uniquely mapped reads by inspecting the NH:i: SAM attribute. See also the bam_uniq.pl utility, which extracts both uniquely and multiply mapped reads from BAM files without strand-splitting."
    log: "Log file extension. Default is \".bam_split.log\". The log file is created in the directory given via -o and its name is constructed from the base name of the input BAM file and the log filename extension."
    man: "Prints the manual page and exits"
  }
}