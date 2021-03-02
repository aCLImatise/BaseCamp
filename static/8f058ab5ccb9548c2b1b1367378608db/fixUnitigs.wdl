version 1.0

task FixUnitigs {
  input {
    String? o
    String unit_igs_dot_cgb
    String fixed_unit_igs_dot_cgb
  }
  command <<<
    fixUnitigs \
      ~{unit_igs_dot_cgb} \
      ~{fixed_unit_igs_dot_cgb} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    unit_igs_dot_cgb: ""
    fixed_unit_igs_dot_cgb: ""
  }
  output {
    File out_stdout = stdout()
  }
}