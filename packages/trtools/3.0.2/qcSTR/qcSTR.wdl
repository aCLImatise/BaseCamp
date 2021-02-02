version 1.0

task QcSTR {
  input {
    File? vcf
    String? out
    String? vcf_type
    File? samples
    Int? period
    String? quality
    Boolean? quality_ignore_no_call
    String? ref_bias_metric
    Int? ref_bias_min_gts
    Int? ref_bias_x_range_min
    Int? ref_bias_x_range_max
    Int? ref_bias_binsize
    Int? num_records
    String tool
    String for
    String generating
    String various
    String qc
    String plots
    String tr
    String call_sets
  }
  command <<<
    qcSTR \
      ~{tool} \
      ~{for} \
      ~{generating} \
      ~{various} \
      ~{qc} \
      ~{plots} \
      ~{tr} \
      ~{call_sets} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(period) then ("--period " +  '"' + period + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if (quality_ignore_no_call) then "--quality-ignore-no-call" else ""} \
      ~{if defined(ref_bias_metric) then ("--refbias-metric " +  '"' + ref_bias_metric + '"') else ""} \
      ~{if defined(ref_bias_min_gts) then ("--refbias-mingts " +  '"' + ref_bias_min_gts + '"') else ""} \
      ~{if defined(ref_bias_x_range_min) then ("--refbias-xrange-min " +  '"' + ref_bias_x_range_min + '"') else ""} \
      ~{if defined(ref_bias_x_range_max) then ("--refbias-xrange-max " +  '"' + ref_bias_x_range_max + '"') else ""} \
      ~{if defined(ref_bias_binsize) then ("--refbias-binsize " +  '"' + ref_bias_binsize + '"') else ""} \
      ~{if defined(num_records) then ("--numrecords " +  '"' + num_records + '"') else ""}
  >>>
  parameter_meta {
    vcf: "VCF file to analyze."
    out: "Output prefix for files generated"
    vcf_type: "Which type of VCF to restrict the input to, or 'auto'\\nfor no restrction (default: auto)"
    samples: "File containing list of samples to include"
    period: "Only consider repeats with this motif length"
    quality: "Which quality plot(s) to produce. May be specified\\nmore than once. See the README for more info (default:\\n[])"
    quality_ignore_no_call: "Exclude no-calls from quality graph distributions\\ninstead of the default, which is to include them as\\nzero quality calls. Setting this can cause the\\nplotting to crash if it reduces the number of valid\\ncalls (in a strata) to <= 1 (default: False)"
    ref_bias_metric: "Which metric to use for the y-axis on the reference\\nbias plot. (default: mean)"
    ref_bias_min_gts: "Don't compute points for the reference bias plot based\\non fewer than this many genotypes (default: 100)"
    ref_bias_x_range_min: "Minimum x-axis value (bp) to show on the reference\\nbias plot (default: 0)"
    ref_bias_x_range_max: "Maximum x-axis value (bp) to show on the reference\\nbias plot (default: 100)"
    ref_bias_binsize: "Size (bp) of x-axis bins for the reference bias plot\\n(default: 5)"
    num_records: "Only process this many records"
    tool: ""
    for: ""
    generating: ""
    various: ""
    qc: ""
    plots: ""
    tr: ""
    call_sets: ""
  }
  output {
    File out_stdout = stdout()
  }
}