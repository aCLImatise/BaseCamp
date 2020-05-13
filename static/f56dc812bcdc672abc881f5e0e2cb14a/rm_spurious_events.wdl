version 1.0

task RmSpuriousEvents.pl {
  input {
    Boolean fracFracMax
    Boolean debugDebug
    Boolean manMan
  }
  command <<<
    rm_spurious_events.pl \
      ~{true="--frac_max" false="" fracFracMax} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--man" false="" manMan}
  >>>
}