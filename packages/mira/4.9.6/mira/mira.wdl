version 1.0

task Mira {
  input {
    Boolean? _cwd_directory
    Boolean? _mcheck_only
    Boolean? _mdcheck_m
    Boolean? _resume_resume
    Boolean? _threads_integer
    Boolean? _version_print
    String mira_talk_at_freelists_dot_org
  }
  command <<<
    mira \
      ~{mira_talk_at_freelists_dot_org} \
      ~{if (_cwd_directory) then "-c" else ""} \
      ~{if (_mcheck_only) then "-m" else ""} \
      ~{if (_mdcheck_m) then "-M" else ""} \
      ~{if (_resume_resume) then "-r" else ""} \
      ~{if (_threads_integer) then "-t" else ""} \
      ~{if (_version_print) then "-v" else ""}
  >>>
  parameter_meta {
    _cwd_directory: "/ --cwd=           directory       Change working directory"
    _mcheck_only: "/ --mcheck                         Only check the manifest file, then exit."
    _mdcheck_m: "/ --mdcheck                        Like -m, but also check existence of\\ndata files."
    _resume_resume: "/ --resume                         Resume an interrupted assembly"
    _threads_integer: "/ --threads=       integer         Force number of threads (overrides\\nequivalent -GE:not manifest entry)"
    _version_print: "/ --version                        Print version and exit"
    mira_talk_at_freelists_dot_org: "To report bugs or ask for features, please use the SourceForge ticketing"
  }
  output {
    File out_stdout = stdout()
  }
}