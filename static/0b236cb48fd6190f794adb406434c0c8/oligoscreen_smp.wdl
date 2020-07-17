version 1.0

task OligoscreenSmp {
  input {
    String oligo_screen
    String list_file
    String report_file
  }
  command <<<
    oligoscreen-smp \
      ~{oligo_screen} \
      ~{list_file} \
      ~{report_file}
  >>>
  parameter_meta {
    oligo_screen: ""
    list_file: ""
    report_file: ""
  }
}