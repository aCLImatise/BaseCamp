version 1.0

task MagpurifyGenomes {
  input {
    String mag_purify
  }
  command <<<
    magpurify genomes_ \
      ~{mag_purify}
  >>>
  parameter_meta {
    mag_purify: ""
  }
  output {
    File out_stdout = stdout()
  }
}