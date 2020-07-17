version 1.0

task Freec2bed.pl {
  input {
    Boolean? verbose_mode
  }
  command <<<
    freec2bed.pl \
      ~{true="-v" false="" verbose_mode}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
  }
}