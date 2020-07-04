version 1.0

task HmmfetchKey {
  input {
    String hmm_fetch
    String hmm_file
    String key
  }
  command <<<
    hmmfetch key \
      ~{hmm_fetch} \
      ~{hmm_file} \
      ~{key}
  >>>
  parameter_meta {
    hmm_fetch: ""
    hmm_file: ""
    key: ""
  }
}