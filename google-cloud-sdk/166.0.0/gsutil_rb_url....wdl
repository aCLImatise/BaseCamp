version 1.0

task GsutilRbUrl... {
  input {
    Boolean fF
  }
  command <<<
    gsutil rb url... \
      ~{true="-f" false="" fF}
  >>>
}