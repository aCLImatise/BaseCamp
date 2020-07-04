version 1.0

task NwDistance {
  input {
    Boolean? a_him_nt
  }
  command <<<
    nw_distance \
      ~{true="-ahimnt" false="" a_him_nt}
  >>>
  parameter_meta {
    a_him_nt: ""
  }
}