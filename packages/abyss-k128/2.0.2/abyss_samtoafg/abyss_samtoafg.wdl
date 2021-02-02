version 1.0

task Abysssamtoafg {
  input {
    Boolean? eid
    Boolean? iid
    Boolean? mean
    Boolean? sd
    String? cb
    String bank_transact
    String contigs_dot_fa
    String hawkeye
    String alignments_dots_am
  }
  command <<<
    abyss_samtoafg \
      ~{bank_transact} \
      ~{contigs_dot_fa} \
      ~{hawkeye} \
      ~{alignments_dots_am} \
      ~{if (eid) then "--eid" else ""} \
      ~{if (iid) then "--iid" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (sd) then "--sd" else ""} \
      ~{if defined(cb) then ("-cb " +  '"' + cb + '"') else ""}
  >>>
  parameter_meta {
    eid: "the EID of the library"
    iid: "the IID of the library"
    mean: "the mean of the fragment-size"
    sd: "the standard deviation of the fragment-size\\n"
    cb: ""
    bank_transact: ""
    contigs_dot_fa: ""
    hawkeye: ""
    alignments_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}