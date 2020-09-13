version 1.0

task Genometoolsconfig {
  input {
    Boolean? cppflags
  }
  command <<<
    genometools_config \
      ~{if (cppflags) then "-cppflags" else ""}
  >>>
  parameter_meta {
    cppflags: ""
  }
  output {
    File out_stdout = stdout()
  }
}