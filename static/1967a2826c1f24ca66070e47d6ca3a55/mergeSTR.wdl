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
    String str
    String vcf
    File files
    String from
    String gang_str
  }
  command <<<
    mergeSTR \
      ~{tool} \
      ~{for} \
      ~{merging} \
      ~{str} \
      ~{vcf} \
      ~{files} \
      ~{from} \
      ~{gang_str} \
      ~{if defined(v_cfs) then ("--vcfs " +  '"' + v_cfs + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{true="--update-sample-from-file" false="" update_sample_from_file} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    v_cfs: "Comma-separated list of VCF files to merge (must be sorted, bgzipped and indexed)"
    out: "Prefix to name output files"
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    update_sample_from_file: "Use file names, rather than sample header names, when merging"
    verbose: "Print out extra info"
    quiet: "Don't print out anything"
    tool: ""
    for: ""
    merging: ""
    str: ""
    vcf: ""
    files: ""
    from: ""
    gang_str: ""
  }
}