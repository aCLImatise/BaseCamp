version 1.0

task ScepiaArea27Locations {
  input {
    String sc_epia
    Int area_two_seven
    String bam_file
    String outfile
  }
  command <<<
    scepia area27 locations_ \
      ~{sc_epia} \
      ~{area_two_seven} \
      ~{bam_file} \
      ~{outfile}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scepia:0.5.0--py_0"
  }
  parameter_meta {
    sc_epia: ""
    area_two_seven: ""
    bam_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}