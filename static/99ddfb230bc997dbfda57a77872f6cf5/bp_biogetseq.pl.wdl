version 1.0

task BpBiogetseqpl {
  input {
    String? namespace
  }
  command <<<
    bp_biogetseq_pl \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""}
  >>>
  parameter_meta {
    namespace: "id [ ids... ]"
  }
  output {
    File out_stdout = stdout()
  }
}