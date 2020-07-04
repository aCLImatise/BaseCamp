version 1.0

task Fasttree {
  input {
    Boolean? expert
  }
  command <<<
    fasttree \
      ~{true="-expert" false="" expert}
  >>>
  parameter_meta {
    expert: "-- see more options"
  }
}