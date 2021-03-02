version 1.0

task MedakaStitch {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    Int? jobs
    String inputs
    String output_fasta
  }
  command <<<
    medaka stitch \
      ~{inputs} \
      ~{output_fasta} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Limit stitching to these reference names (default:\\nNone)"
    jobs: "Number of worker processes to use. (default: 1)"
    inputs: "Consensus .hdf files."
    output_fasta: "Output .fasta."
  }
  output {
    File out_stdout = stdout()
  }
}