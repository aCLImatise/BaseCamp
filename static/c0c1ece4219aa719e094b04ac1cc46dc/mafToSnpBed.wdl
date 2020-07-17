version 1.0

task MafToSnpBed {
  input {
    String database
    String input_dot_maf
    String input_do_tgp
    String output_dot_bed
  }
  command <<<
    mafToSnpBed \
      ~{database} \
      ~{input_dot_maf} \
      ~{input_do_tgp} \
      ~{output_dot_bed}
  >>>
  parameter_meta {
    database: ""
    input_dot_maf: ""
    input_do_tgp: ""
    output_dot_bed: ""
  }
}