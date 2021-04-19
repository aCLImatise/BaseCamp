version 1.0

task Computecomparison {
  input {
    Boolean? in
    File? out
    Boolean? metadata_file
    Boolean? allow_same_names
    Boolean? normalize
    Boolean? ignore_unassigned_reads
    Boolean? keep_one
    Boolean? verbose
  }
  command <<<
    compute_comparison \
      ~{if (in) then "--in" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (metadata_file) then "--metaDataFile" else ""} \
      ~{if (allow_same_names) then "--allowSameNames" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (ignore_unassigned_reads) then "--ignoreUnassignedReads" else ""} \
      ~{if (keep_one) then "--keepOne" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    in: "[string(s)]                 Input RMA and/or meganized DAA files (single directory ok). Mandatory option."
    out: "[string]                   Output file. Default value: comparison.megan"
    metadata_file: "[string]        Metadata file."
    allow_same_names: "All the same sample name to appear multiple times (will add -1, -2 etc). Default value: false."
    normalize: "Normalize counts. Default value: true."
    ignore_unassigned_reads: "Ignore unassigned, no-hit or contaminant reads. Default value: false."
    keep_one: "In a normalized comparison, non-zero counts are mapped to 1 or more. Default value: false."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}