version 1.0

task MergeSTR {
  input {
    String? v_cfs
    String? out
    String? vcf_type
    Boolean? update_sample_from_file
    Boolean? verbose
    Boolean? quiet
    String tool
    String for
    String merging
    String tr
    String vcf
    String files
    String generated
    String by
  }
  command <<<
    mergeSTR \
      ~{tool} \
      ~{for} \
      ~{merging} \
      ~{tr} \
      ~{vcf} \
      ~{files} \
      ~{generated} \
      ~{by} \
      ~{if defined(v_cfs) then ("--vcfs " +  '"' + v_cfs + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if (update_sample_from_file) then "--update-sample-from-file" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trtools:4.0.0--py_0"
  }
  parameter_meta {
    v_cfs: "Comma-separated list of VCF files to merge (must be\\nsorted, bgzipped and indexed)"
    out: "Prefix to name output files"
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh',\\n'popstr'] (default: auto)"
    update_sample_from_file: "Use file names, rather than sample header names, when\\nmerging (default: False)"
    verbose: "Print out extra info (default: False)"
    quiet: "Don't print out anything (default: False)"
    tool: ""
    for: ""
    merging: ""
    tr: ""
    vcf: ""
    files: ""
    generated: ""
    by: ""
  }
  output {
    File out_stdout = stdout()
  }
}