version 1.0

task BatchFindMotifspl {
  input {
    Boolean? cpu
    Array[Int] f
    String? promoter
    String? set
    String? options_dot_dot_dot
  }
  command <<<
    batchFindMotifs_pl \
      ~{promoter} \
      ~{set} \
      ~{options_dot_dot_dot} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    cpu: "(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)"
    f: ""
    promoter: ""
    set: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}