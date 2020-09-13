version 1.0

task IprUpdateGff {
  input {
    String in_place
  }
  command <<<
    ipr_update_gff \
      ~{in_place}
  >>>
  parameter_meta {
    in_place: "Modify GFF3 files inplace, otherwise it prints to STDOUT"
  }
  output {
    File out_stdout = stdout()
  }
}