version 1.0

task CoverageFromBam {
  input {
    Array[String] regions
    String? prefix
    Int? stride
    File? summary_only
  }
  command <<<
    coverage_from_bam \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if (summary_only) then "--summary_only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    regions: "Only process given regions. (default: None)"
    prefix: "Prefix for output, defaults to basename of bam.\\n(default: None)"
    stride: "Stride in genomic coordinate. (default: 1000)"
    summary_only: "Output only the depth_summary.txt file (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_summary_only = "${in_summary_only}"
  }
}