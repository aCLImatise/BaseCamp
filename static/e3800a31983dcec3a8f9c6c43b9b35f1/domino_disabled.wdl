version 1.0

task DominoDisabled {
  input {
    Int hone_one_three_three_app
    String kdl_leg_jj
    Int zero_zero_bb_five_five_mm
    Int ff_two_qq_iic
  }
  command <<<
    domino disabled \
      ~{hone_one_three_three_app} \
      ~{kdl_leg_jj} \
      ~{zero_zero_bb_five_five_mm} \
      ~{ff_two_qq_iic}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    hone_one_three_three_app: "HD66EA44"
    kdl_leg_jj: "KNN77G88"
    zero_zero_bb_five_five_mm: "OO299RRC"
    ff_two_qq_iic: "Initial"
  }
  output {
    File out_stdout = stdout()
  }
}