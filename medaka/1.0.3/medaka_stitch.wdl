version 1.0

task MedakaStitch {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    String? jobs
    String inputs
    String output_fasta
  }
  command <<<
    medaka stitch \
      ~{inputs} \
      ~{output_fasta} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Limit stitching to these reference names (default: None)"
    jobs: "Number of worker processes to use. (default: 1)"
    inputs: "Consensus .hdf files."
    output_fasta: "Output .fasta."
  }
}