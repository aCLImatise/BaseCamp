version 1.0

task CircleMapRepeats {
  input {
    Boolean? input_coordinate_file
    Boolean? ouput_reads_indicating
    Boolean? mismatch
    Boolean? bases
    Boolean? cmap_q
    Boolean? extension
    Boolean? ratio
    Boolean? fraction
    Boolean? read_number
    String variants
  }
  command <<<
    Circle_Map Repeats \
      ~{variants} \
      ~{if (input_coordinate_file) then "-i" else ""} \
      ~{if (ouput_reads_indicating) then "--output" else ""} \
      ~{if (mismatch) then "--mismatch" else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if (cmap_q) then "--cmapq" else ""} \
      ~{if (extension) then "--extension" else ""} \
      ~{if (ratio) then "--ratio" else ""} \
      ~{if (fraction) then "--fraction" else ""} \
      ~{if (read_number) then "--read_number" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_coordinate_file: "Input: coordinate name sorted bam file"
    ouput_reads_indicating: "Ouput: Reads indicating circular DNA structural"
    mismatch: "Number of mismatches allowed on the reads"
    bases: "Number of bases to extend for computing the coverage\\nratio. Default: 200"
    cmap_q: "Minimum mapping quality treshold for coverage\\ncomputation. Default: 0"
    extension: "Number of bases inside the eccDNA coordinates to\\ncompute the ratio. Default: 100"
    ratio: "Minimum in/out required ratio. Default: 0.6"
    fraction: "Required fraction to merge the intervals of the double\\nmapped reads. Default 0.8"
    read_number: "Minimum number of reads required to output"
    variants: "-dir , --directory   Working directory, default is the working directory"
  }
  output {
    File out_stdout = stdout()
  }
}