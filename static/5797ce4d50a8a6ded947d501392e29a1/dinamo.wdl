version 1.0

task Dinamo {
  input {
    Boolean? no_log
  }
  command <<<
    dinamo \
      ~{true="--no-log" false="" no_log}
  >>>
  parameter_meta {
    no_log: ": Prevents the log ouput from being displayed"
  }
}