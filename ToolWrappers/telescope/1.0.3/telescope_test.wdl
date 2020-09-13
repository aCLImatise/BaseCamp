version 1.0

task TelescopeTest {
  input {
    String telescope
  }
  command <<<
    telescope test \
      ~{telescope}
  >>>
  parameter_meta {
    telescope: ""
  }
  output {
    File out_stdout = stdout()
  }
}