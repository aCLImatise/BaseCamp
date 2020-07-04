version 1.0

task AnalyseDists {
  input {
    Boolean? x
    String analyse_dist
    String? swn
  }
  command <<<
    AnalyseDists \
      ~{analyse_dist} \
      ~{swn} \
      ~{true="-X" false="" x}
  >>>
  parameter_meta {
    x: ""
    analyse_dist: ""
    swn: ""
  }
}