version 1.0

task RelocaTEAbsenceFinderpyUsrTargetGenomePath {
  input {
    String te
  }
  command <<<
    relocaTE_absenceFinder_py usr_target genome_path \
      ~{te}
  >>>
  parameter_meta {
    te: "= sys.argv[4] ## repeat to analyze: ALL or mPing/other te name "
  }
  output {
    File out_stdout = stdout()
  }
}