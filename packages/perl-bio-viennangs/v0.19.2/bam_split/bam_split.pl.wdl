version 1.0

task BamSplitpl {
  input {
    Boolean? bam
    Boolean? bed
    Boolean? bw
    Directory? bw_dir
    Boolean? cs
    Boolean? norm
    Directory? out
    Boolean? reverse
    Boolean? scale
    Boolean? uniq
    Boolean? log
    Boolean? man
  }
  command <<<
    bam_split_pl \
      ~{if (bam) then "--bam" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (bw) then "--bw" else ""} \
      ~{if (bw_dir) then "--bwdir" else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (norm) then "--norm" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (uniq) then "--uniq" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    bam: "Input file in BAM format"
    bed: "Create a BED6 file for each split BAM file"
    bw: "Create BedGraph and bigWig coverage files for e.g. genome browser\\nvisualization."
    bw_dir: "Directory name for resulting bigWig files. This directory is created\\nas subdirectory of the output directory. Default is 'vis'."
    cs: "Chromosome sizes file (required if --bw is given)."
    norm: "Normalize resulting bigWig files"
    out: "Output directory"
    reverse: "Reverse the +/- strand mapping. This is required to achieve proper\\nstrand assignments for certain RNA-seq library preparation protocol."
    scale: "If --bw is given, scale bigWig files to this number. Default is\\n1000000."
    uniq: "Filter uniquely mapped reads by inspecting the NH:i: SAM attribute.\\nSee also the bam_uniq.pl utility, which extracts both uniquely and\\nmultiply mapped reads from BAM files without strand-splitting."
    log: "Log file extension. Default is \\\".bam_split.log\\\". The log file is\\ncreated in the directory given via -o and its name is constructed\\nfrom the base name of the input BAM file and the log filename\\nextension."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_bw_dir = "${in_bw_dir}"
    Directory out_out = "${in_out}"
  }
}