version 1.0

task Zpcatpm {
  input {
    File? tpm
    Int? tpm_filter
    Int? tpm_pseudo_count
    Directory? out
    Boolean? verbose
  }
  command <<<
    zpca_tpm \
      ~{if defined(tpm) then ("--tpm " +  '"' + tpm + '"') else ""} \
      ~{if defined(tpm_filter) then ("--tpm-filter " +  '"' + tpm_filter + '"') else ""} \
      ~{if defined(tpm_pseudo_count) then ("--tpm-pseudocount " +  '"' + tpm_pseudo_count + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/zpca:0.8.3.post1--pyh5e36f6f_0"
  }
  parameter_meta {
    tpm: "TPM table (tsv)."
    tpm_filter: "Filter genes/transcripts with mean expression less than the provided filter. Default: 0"
    tpm_pseudo_count: "Pseudocount to add in the tpm table. Default: 1"
    out: "Output directory"
    verbose: "Verbose"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}