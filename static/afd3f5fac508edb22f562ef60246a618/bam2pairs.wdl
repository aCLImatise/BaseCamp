version 1.0

task Bam2pairs {
  input {
    Boolean? position_leftmost_position
    Boolean? chrom_size
  }
  command <<<
    bam2pairs \
      ~{true="-l" false="" position_leftmost_position} \
      ~{true="--chromsize" false="" chrom_size}
  >>>
  parameter_meta {
    position_leftmost_position: ": position is left-most position (default 5'end)."
    chrom_size: ": chrom size file is provided to define mate ordering. (default alpha-numeric)"
  }
}