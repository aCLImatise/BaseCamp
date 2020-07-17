version 1.0

task CircleMapRepeats {
  input {
    Boolean? input_coordinate_sorted
    Boolean? _output_reads
    Boolean? dir
    Boolean? _mismatch_number
    Boolean? _bases_number
    Boolean? cq
    Boolean? _extension_number
    Boolean? _ratio_minimum
    Boolean? _fraction_required
    Boolean? _readnumber_minimum
  }
  command <<<
    Circle-Map Repeats \
      ~{true="-i" false="" input_coordinate_sorted} \
      ~{true="-o" false="" _output_reads} \
      ~{true="-dir" false="" dir} \
      ~{true="-m" false="" _mismatch_number} \
      ~{true="-b" false="" _bases_number} \
      ~{true="-cq" false="" cq} \
      ~{true="-E" false="" _extension_number} \
      ~{true="-r" false="" _ratio_minimum} \
      ~{true="-f" false="" _fraction_required} \
      ~{true="-n" false="" _readnumber_minimum}
  >>>
  parameter_meta {
    input_coordinate_sorted: "Input: coordinate name sorted bam file"
    _output_reads: ", --output        Ouput: Reads indicating circular DNA structural variants"
    dir: ", --directory   Working directory, default is the working directory"
    _mismatch_number: ", --mismatch      Number of mismatches allowed on the reads"
    _bases_number: ", --bases         Number of bases to extend for computing the coverage ratio. Default: 200"
    cq: ", --cmapq        Minimum mapping quality treshold for coverage computation. Default: 0"
    _extension_number: ", --extension     Number of bases inside the eccDNA coordinates to compute the ratio. Default: 100"
    _ratio_minimum: ", --ratio         Minimum in/out required ratio. Default: 0.6"
    _fraction_required: ", --fraction      Required fraction to merge the intervals of the double mapped reads. Default 0.8"
    _readnumber_minimum: ", --read_number   Minimum number of reads required to output"
  }
}