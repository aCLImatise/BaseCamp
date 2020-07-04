version 1.0

task PlotRoh.py {
  input {
    Boolean? highlight
    Boolean? interactive
    String? min_length
    String? min_markers
    File? outfile
    String? min_qual
    Boolean? region
    File? samples
    String dir
  }
  command <<<
    plot-roh.py \
      ~{dir} \
      ~{true="--highlight" false="" highlight} \
      ~{true="--interactive" false="" interactive} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_markers) then ("--min-markers " +  '"' + min_markers + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{true="--region" false="" region} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""}
  >>>
  parameter_meta {
    highlight: "+group1,-group2       Highlight calls shared within group1 but not present in group2"
    interactive: "Run interactively"
    min_length: "Filter input regions shorter than this [0]"
    min_markers: "Filter input regions with fewer marker than this [0]"
    outfile: "Output file name [plot.png]"
    min_qual: "Filter input regions with quality smaller than this [0]"
    region: "[^]<chr|chr:beg-end>     Plot this chromosome/region only"
    samples: "List of samples to show, rename or group: \"name[\tnew_name[\tgroup]]\""
    dir: ""
  }
}