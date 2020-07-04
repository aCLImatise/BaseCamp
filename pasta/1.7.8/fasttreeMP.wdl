version 1.0

task FasttreeMP {
  input {
    Boolean? expert
  }
  command <<<
    fasttreeMP \
      ~{true="-expert" false="" expert}
  >>>
  parameter_meta {
    expert: "-- see more options"
  }
}