version 1.0

task BigWigAverageOverBed {
  input {
    File? stats
    String? bed_out
    String? sample_around_center
    Boolean? minmax
    String in_dot_bw
    String in_dot_bed
  }
  command <<<
    bigWigAverageOverBed \
      ~{in_dot_bw} \
      ~{in_dot_bed} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""} \
      ~{if defined(bed_out) then ("-bedOut " +  '"' + bed_out + '"') else ""} \
      ~{if defined(sample_around_center) then ("-sampleAroundCenter " +  '"' + sample_around_center + '"') else ""} \
      ~{if (minmax) then "-minMax" else ""}
  >>>
  parameter_meta {
    stats: "- Output a collection of overall statistics to stat.ra file"
    bed_out: "- Make output bed that is echo of input bed but with mean column appended"
    sample_around_center: "- Take sample at region N bases wide centered around bed item, rather\\nthan the usual sample in the bed item."
    minmax: "- include two additional columns containing the min and max observed in the area."
    in_dot_bw: ""
    in_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
    File out_stats = "${in_stats}"
  }
}