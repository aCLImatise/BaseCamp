version 1.0

task HmmfetchKeyfile {
  input {
    File? index
    File? f
    String hmm_fetch
    String hmm_file
    String key
  }
  command <<<
    hmmfetch keyfile \
      ~{hmm_fetch} \
      ~{hmm_file} \
      ~{key} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: ""
    f: ""
    hmm_fetch: ""
    hmm_file: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}