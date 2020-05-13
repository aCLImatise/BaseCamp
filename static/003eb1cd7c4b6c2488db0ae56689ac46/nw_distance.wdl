version 1.0

task NwDistance {
  input {
    Boolean tT
  }
  command <<<
    nw_distance \
      ~{true="-t" false="" tT}
  >>>
}