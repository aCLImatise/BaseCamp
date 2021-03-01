version 1.0

task HmmfetchHmmfile {
  input {
    File? index
    File? f
    String hmm_fetch
    String key
    String keyfile
  }
  command <<<
    hmmfetch hmmfile \
      ~{hmm_fetch} \
      ~{key} \
      ~{keyfile} \
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
    key: ""
    keyfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}