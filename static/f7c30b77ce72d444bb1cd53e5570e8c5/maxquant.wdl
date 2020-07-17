version 1.0

task Maxquant {
  input {
    String complete
    String run
    String of
    String an
    String existing
    String mq_par_dot_xml
    File file
  }
  command <<<
    maxquant \
      ~{complete} \
      ~{run} \
      ~{of} \
      ~{an} \
      ~{existing} \
      ~{mq_par_dot_xml} \
      ~{file}
  >>>
  parameter_meta {
    complete: ""
    run: ""
    of: ""
    an: ""
    existing: ""
    mq_par_dot_xml: ""
    file: ""
  }
}