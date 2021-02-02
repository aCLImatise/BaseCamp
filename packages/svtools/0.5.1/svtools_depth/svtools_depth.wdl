version 1.0

task SvtoolsDepth {
  input {
    Boolean? support
    String svtools
  }
  command <<<
    svtools depth \
      ~{svtools} \
      ~{if (support) then "--support" else ""}
  >>>
  parameter_meta {
    support: ""
    svtools: ""
  }
  output {
    File out_stdout = stdout()
  }
}