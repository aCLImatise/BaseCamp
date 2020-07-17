version 1.0

task TickToDate {
  input {
    String ticks
  }
  command <<<
    tickToDate \
      ~{ticks}
  >>>
  parameter_meta {
    ticks: ""
  }
}