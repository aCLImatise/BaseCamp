version 1.0

task MagpurifyCleanBinOut {
  input {
    String mag_purify
    String clean_bin
    String fna
    String out
    String out_fna
  }
  command <<<
    magpurify clean-bin out \
      ~{mag_purify} \
      ~{clean_bin} \
      ~{fna} \
      ~{out} \
      ~{out_fna}
  >>>
  parameter_meta {
    mag_purify: ""
    clean_bin: ""
    fna: ""
    out: ""
    out_fna: ""
  }
}