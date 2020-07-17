version 1.0

task QcSTR {
  input {
    String? vcf
    String? out
    String? vcf_type
    String? samples
    String? period
    String? num_records
    String tool
    String var_7
    String generating
    String various
    String qc
    String plots
    String var_12
    String tr
    String call_sets
  }
  command <<<
    qcSTR \
      ~{tool} \
      ~{var_7} \
      ~{generating} \
      ~{various} \
      ~{qc} \
      ~{plots} \
      ~{var_12} \
      ~{tr} \
      ~{call_sets} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(period) then ("--period " +  '"' + period + '"') else ""} \
      ~{if defined(num_records) then ("--numrecords " +  '"' + num_records + '"') else ""}
  >>>
  parameter_meta {
    vcf: "VCF file to analyze."
    out: "Output prefix for files generated"
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    samples: "File containing list of samples to include"
    period: "Only consider repeats with this motif length"
    num_records: "Only process this many records"
    tool: ""
    var_7: ""
    generating: ""
    various: ""
    qc: ""
    plots: ""
    var_12: ""
    tr: ""
    call_sets: ""
  }
}