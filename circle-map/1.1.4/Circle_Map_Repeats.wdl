version 1.0

task CircleMapRepeats {
  input {
    Boolean? input_coordinate_name
    Boolean? _output_ouput
    Boolean? _mismatch_number
    Boolean? _bases_number
    Boolean? cq
    Boolean? _extension_number
    Boolean? _ratio_inout
    Boolean? _fraction_fraction
    Boolean? _readnumber_minimum
    String variants
  }
  command <<<
    Circle_Map Repeats \
      ~{variants} \
      ~{if (input_coordinate_name) then "-i" else ""} \
      ~{if (_output_ouput) then "-o" else ""} \
      ~{if (_mismatch_number) then "-m" else ""} \
      ~{if (_bases_number) then "-b" else ""} \
      ~{if (cq) then "-cq" else ""} \
      ~{if (_extension_number) then "-E" else ""} \
      ~{if (_ratio_inout) then "-r" else ""} \
      ~{if (_fraction_fraction) then "-f" else ""} \
      ~{if (_readnumber_minimum) then "-n" else ""}
  >>>
  parameter_meta {
    input_coordinate_name: "Input: coordinate name sorted bam file"
    _output_ouput: ", --output        Ouput: Reads indicating circular DNA structural"
    _mismatch_number: ", --mismatch      Number of mismatches allowed on the reads"
    _bases_number: ", --bases         Number of bases to extend for computing the coverage\\nratio. Default: 200"
    cq: ", --cmapq        Minimum mapping quality treshold for coverage\\ncomputation. Default: 0"
    _extension_number: ", --extension     Number of bases inside the eccDNA coordinates to\\ncompute the ratio. Default: 100"
    _ratio_inout: ", --ratio         Minimum in/out required ratio. Default: 0.6"
    _fraction_fraction: ", --fraction      Required fraction to merge the intervals of the double\\nmapped reads. Default 0.8"
    _readnumber_minimum: ", --read_number   Minimum number of reads required to output"
    variants: "-dir , --directory   Working directory, default is the working directory"
  }
  output {
    File out_stdout = stdout()
  }
}