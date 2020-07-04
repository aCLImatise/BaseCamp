version 1.0

task FindRepeats.pl {
  input {
    Boolean? min_length
    Boolean? min_pid
    Boolean? keep_temp
  }
  command <<<
    find-repeats.pl \
      ~{true="--min-length" false="" min_length} \
      ~{true="--min-pid" false="" min_pid} \
      ~{true="--keep-temp" false="" keep_temp}
  >>>
  parameter_meta {
    min_length: ": Minimum length of repeat region (150)."
    min_pid: ": Minimum PID of repeat region (90)."
    keep_temp: ": Keep around temporary nucmer/coords files (no)."
  }
}