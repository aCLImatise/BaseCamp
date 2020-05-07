version 1.0

task NwStats {
  input {
    Boolean fF
  }
  command <<<
    nw_stats \
      ~{true="-f" false="" fF}
  >>>
}