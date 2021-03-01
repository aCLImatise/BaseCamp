version 1.0

task Mira {
  input {
    Boolean? cwd
    Boolean? m_check
    Boolean? md_check
    Boolean? resume
    Boolean? threads
    String mira_talk_at_freelists_dot_org
  }
  command <<<
    mira \
      ~{mira_talk_at_freelists_dot_org} \
      ~{if (cwd) then "--cwd" else ""} \
      ~{if (m_check) then "--mcheck" else ""} \
      ~{if (md_check) then "--mdcheck" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cwd: "=           directory       Change working directory"
    m_check: "Only check the manifest file, then exit."
    md_check: "Like -m, but also check existence of\\ndata files."
    resume: "Resume an interrupted assembly"
    threads: "=       integer         Force number of threads (overrides\\nequivalent -GE:not manifest entry)"
    mira_talk_at_freelists_dot_org: "To report bugs or ask for features, please use the SourceForge ticketing"
  }
  output {
    File out_stdout = stdout()
  }
}