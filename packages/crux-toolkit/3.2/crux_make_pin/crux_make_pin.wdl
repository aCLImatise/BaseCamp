version 1.0

task CruxMakepin {
  input {
    String? sida_k
  }
  command <<<
    crux make_pin \
      ~{if defined(sida_k) then ("--sidak " +  '"' + sida_k + '"') else ""}
  >>>
  parameter_meta {
    sida_k: "set to T, then the \\\"distinct matches/spectrum\\\" column must be"
  }
  output {
    File out_stdout = stdout()
  }
}