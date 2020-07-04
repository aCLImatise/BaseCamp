version 1.0

task FastTree {
  input {
    Boolean? expert
  }
  command <<<
    FastTree \
      ~{true="-expert" false="" expert}
  >>>
  parameter_meta {
    expert: "-- see more options"
  }
}