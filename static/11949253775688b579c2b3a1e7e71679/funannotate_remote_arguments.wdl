version 1.0

task FunannotateRemoteArguments {
  input {
    String? i
    String? g
    Boolean? m
    String fun_annotate_remote_do_tpy
  }
  command <<<
    funannotate remote arguments \
      ~{fun_annotate_remote_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{true="-m" false="" m}
  >>>
  parameter_meta {
    i: ""
    g: ""
    m: ""
    fun_annotate_remote_do_tpy: ""
  }
}