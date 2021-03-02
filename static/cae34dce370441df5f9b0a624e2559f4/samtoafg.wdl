version 1.0

task Samtoafg {
  input {
    Boolean? eid
    Boolean? iid
    Boolean? mean
    Boolean? sd
    String? cb
    String abyss_sam_to_afg
    String bank_transact
    String hawkeye
    String contigs_dot_fa
    String alignments_dots_am
  }
  command <<<
    samtoafg \
      ~{abyss_sam_to_afg} \
      ~{bank_transact} \
      ~{hawkeye} \
      ~{contigs_dot_fa} \
      ~{alignments_dots_am} \
      ~{if (eid) then "--eid" else ""} \
      ~{if (iid) then "--iid" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (sd) then "--sd" else ""} \
      ~{if defined(cb) then ("-cb " +  '"' + cb + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    eid: "the EID of the library"
    iid: "the IID of the library"
    mean: "the mean of the fragment-size"
    sd: "the standard deviation of the fragment-size\\n"
    cb: ""
    abyss_sam_to_afg: ""
    bank_transact: ""
    hawkeye: ""
    contigs_dot_fa: ""
    alignments_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}