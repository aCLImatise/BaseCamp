version 1.0

task InteropAggregate {
  input {
    Boolean maxMaxTile
  }
  command <<<
    interop_aggregate \
      ~{true="--max-tile" false="" maxMaxTile}
  >>>
}