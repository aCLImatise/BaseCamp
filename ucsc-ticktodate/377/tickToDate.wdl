version 1.0

task TickToDate {
  input {
    String? ticksTicks
  }
  command <<<
    tickToDate \
      ~{ticksTicks}
  >>>
}