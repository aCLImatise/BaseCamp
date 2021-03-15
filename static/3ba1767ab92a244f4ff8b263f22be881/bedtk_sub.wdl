version 1.0

task BedtkSub {
  input {
    String minu_end_dot_bed
    String sub_tra_hend_dot_bed
  }
  command <<<
    bedtk sub \
      ~{minu_end_dot_bed} \
      ~{sub_tra_hend_dot_bed}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0"
  }
  parameter_meta {
    minu_end_dot_bed: ""
    sub_tra_hend_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}