version 1.0

task SplashPlot.halflifespergene {
  input {
    String? tc_rate
    String? bed
    String? sim
    String? slam
    Boolean? t
  }
  command <<<
    splash plot.halflifespergene \
      ~{if defined(tc_rate) then ("--tc-rate " +  '"' + tc_rate + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""} \
      ~{if defined(slam) then ("-slam " +  '"' + slam + '"') else ""} \
      ~{true="-t" false="" t}
  >>>
  parameter_meta {
    tc_rate: "T->C conversion rate"
    bed: "BED file"
    sim: ""
    slam: ""
    t: ""
  }
}