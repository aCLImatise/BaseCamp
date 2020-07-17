version 1.0

task Extract {
  input {
    Boolean? nowrap
    String sequence_file
    String coords
  }
  command <<<
    extract \
      ~{sequence_file} \
      ~{coords} \
      ~{true="--nowrap" false="" nowrap}
  >>>
  parameter_meta {
    nowrap: "Use the actual input coordinates without any wraparound that would be needed by a circular genome.  Without this option, the output sequence is the shorter of the two ways around the circle.  Use the -d option to specify direction explicitly."
    sequence_file: ""
    coords: ""
  }
}