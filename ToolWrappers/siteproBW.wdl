version 1.0

task SiteproBW {
  input {
    File? bw
    File? bed
    Int? span
    Int? pf_res
    Boolean? dir
    Boolean? dump
    Boolean? confid
    Int? label
    String step_dot
  }
  command <<<
    siteproBW \
      ~{step_dot} \
      ~{if defined(bw) then ("--bw " +  '"' + bw + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(pf_res) then ("--pf-res " +  '"' + pf_res + '"') else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (confid) then "--confid" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""}
  >>>
  parameter_meta {
    bw: "input bigWIG file. Multiple bigWIG files can be given\\nvia -w (--bw) individually (eg -w WIG1.bw, -w\\nWIG2.bw). WARNING! multiple bigwig and bed files are\\nnot allowed."
    bed: "BED file of regions of interest. (eg, binding sites or\\nmotif locations) Multiple BED files can be given via\\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\\nWARNING! multiple wig and bed files are not allowed."
    span: "Span from the center of each BED region in both\\ndirections(+/-) (eg, [c - span, c + span], where c is\\nthe center of a region), default:1000 bp"
    pf_res: "Profiling resolution, default: 50 bp"
    dir: "If set, the direction (+/-) is considered in\\nprofiling. If no strand info given in the BED, this\\noption is ignored."
    dump: "If set, profiles are dumped as a TXT file"
    confid: "If set, it will draw 95% confidence interval for each"
    label: "Labels of the wig files. If given, they are used as\\nthe legends of the plot and in naming the TXT files of\\nprofile dumps; otherwise, the bigWIG file names will\\nbe used as the labels. Multiple labels can be given\\nvia -l (--label) individually (eg, -l LABEL1 -l\\nLABEL2). WARNING! The number and order of the labels\\nmust be the same as the bigWIG files.\\n"
    step_dot: "--name=NAME           Name of this run. If not given, the body of the bed"
  }
  output {
    File out_stdout = stdout()
  }
}