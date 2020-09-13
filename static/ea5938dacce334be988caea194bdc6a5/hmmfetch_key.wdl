version 1.0

task HmmfetchKey {
  input {
    File? index
    File? f
    String hmm_fetch
    String hmm_file
    String keyfile
    String key
  }
  command <<<
    hmmfetch key \
      ~{hmm_fetch} \
      ~{hmm_file} \
      ~{keyfile} \
      ~{key} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    f: ""
    hmm_fetch: ""
    hmm_file: ""
    keyfile: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}