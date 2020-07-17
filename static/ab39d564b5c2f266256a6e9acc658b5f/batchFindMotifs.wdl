version 1.0

task BatchFindMotifs.pl {
  input {
    Boolean? cpu
    Array[String] f
    String? promoter
    String? set
    String? options_dot_dot_dot
  }
  command <<<
    batchFindMotifs.pl \
      ~{promoter} \
      ~{set} \
      ~{options_dot_dot_dot} \
      ~{true="-cpu" false="" cpu} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    cpu: "(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)"
    f: ""
    promoter: ""
    set: ""
    options_dot_dot_dot: ""
  }
}