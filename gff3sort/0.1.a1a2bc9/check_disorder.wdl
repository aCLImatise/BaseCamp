version 1.0

task CheckDisorder.pl {
  input {
    Boolean? list
  }
  command <<<
    check-disorder.pl \
      ~{true="--list" false="" list}
  >>>
  parameter_meta {
    list: "list all IDs that have children features appearing in front of themselves"
  }
}