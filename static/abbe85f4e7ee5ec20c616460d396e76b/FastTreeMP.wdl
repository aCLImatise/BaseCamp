version 1.0

task FastTreeMP {
  input {
    Boolean? expert
  }
  command <<<
    FastTreeMP \
      ~{true="-expert" false="" expert}
  >>>
  parameter_meta {
    expert: "-- see more options"
  }
}