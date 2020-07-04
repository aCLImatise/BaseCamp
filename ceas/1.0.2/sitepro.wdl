version 1.0

task Sitepro {
  input {
    String? wig
    String? bed
    String? span
    String? pf_res
    Boolean? dir
    Boolean? dump
    String? name
    String? label
  }
  command <<<
    sitepro \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(pf_res) then ("--pf-res " +  '"' + pf_res + '"') else ""} \
      ~{true="--dir" false="" dir} \
      ~{true="--dump" false="" dump} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""}
  >>>
  parameter_meta {
    wig: "input WIG file. WARNING: both fixedStep and variableStep WIG formats are accepted. Multiple WIG files can be given via -w (--wig) individually (eg -w WIG1.wig, -w WIG2.wig). WARNING! multiple wig and bed files are not allowed."
    bed: "BED file of regions of interest. (eg, binding sites or motif locations) Multiple BED files can be given via -b (--bed) individually (eg -b BED1.bed -b BED2.bed). WARNING! multiple wig and bed files are not allowed."
    span: "Span from the center of each BED region in both directions(+/-) (eg, [c - span, c + span], where c is the center of a region), default:1000 bp"
    pf_res: "Profiling resolution, default: 50 bp"
    dir: "If set, the direction (+/-) is considered in profiling. If no strand info given in the BED, this option is ignored."
    dump: "If set, profiles are dumped as a TXT file"
    name: "Name of this run. If not given, the body of the bed file name will be used,"
    label: "Labels of the wig files. If given, they are used as the legends of the plot and in naming the TXT files of profile dumps; otherwise, the WIG file names will be used as the labels. Multiple labels can be given via -l (--label) individually (eg, -l LABEL1 -l LABEL2). WARNING! The number and order of the labels must be the same as the WIG files."
  }
}