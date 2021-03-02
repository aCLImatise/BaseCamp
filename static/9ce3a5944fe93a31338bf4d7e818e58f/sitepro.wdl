version 1.0

task Sitepro {
  input {
    File? wig
    File? bed
    Int? span
    Int? pf_res
    Boolean? dir
    Boolean? dump
    File? name
    Int? label
  }
  command <<<
    sitepro \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(pf_res) then ("--pf-res " +  '"' + pf_res + '"') else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    wig: "input WIG file. WARNING: both fixedStep and\\nvariableStep WIG formats are accepted. Multiple WIG\\nfiles can be given via -w (--wig) individually (eg -w\\nWIG1.wig, -w WIG2.wig). WARNING! multiple wig and bed\\nfiles are not allowed."
    bed: "BED file of regions of interest. (eg, binding sites or\\nmotif locations) Multiple BED files can be given via\\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\\nWARNING! multiple wig and bed files are not allowed."
    span: "Span from the center of each BED region in both\\ndirections(+/-) (eg, [c - span, c + span], where c is\\nthe center of a region), default:1000 bp"
    pf_res: "Profiling resolution, default: 50 bp"
    dir: "If set, the direction (+/-) is considered in\\nprofiling. If no strand info given in the BED, this\\noption is ignored."
    dump: "If set, profiles are dumped as a TXT file"
    name: "Name of this run. If not given, the body of the bed\\nfile name will be used,"
    label: "Labels of the wig files. If given, they are used as\\nthe legends of the plot and in naming the TXT files of\\nprofile dumps; otherwise, the WIG file names will be\\nused as the labels. Multiple labels can be given via\\n-l (--label) individually (eg, -l LABEL1 -l LABEL2).\\nWARNING! The number and order of the labels must be\\nthe same as the WIG files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}