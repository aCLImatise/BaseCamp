version 1.0

task BlackholeDisabled {
  input {
    Int five_h
    Int three_h
    Int five_d
    Int ones
    Int seven_h
  }
  command <<<
    black_hole disabled \
      ~{five_h} \
      ~{three_h} \
      ~{five_d} \
      ~{ones} \
      ~{seven_h}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    five_h: "4H  8S      6D 11D  6C     11H 12S  8D "
    three_h: "2S  9H      4S  6H  4C      2C 13S  5S "
    five_d: "2D 13C     12C  4D  7S     "
    ones: "2C  3S  4S  3H  2S  1H 13H 12C 11S 10C  9C  8H "
    seven_h: "6D  5H  4H  5D  4D  3C  2D  1D 13C 12D 11H 12S "
  }
  output {
    File out_stdout = stdout()
  }
}