version 1.0

task Afetch {
  input {
    Boolean? index
    Boolean? options
  }
  command <<<
    afetch \
      ~{true="--index" false="" index} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    index: ": construct indices for the database"
    options: ""
  }
}