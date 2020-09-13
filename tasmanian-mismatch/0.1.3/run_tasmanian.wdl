version 1.0

task RunTasmanian {
  input {
    Boolean? reference_fast_a
    Boolean? unmask_genome
    Boolean? base_quality
    Boolean? filter_in_del
    Boolean? filter_length
    Boolean? soft_clip_bypass
    Boolean? mapping_quality
    Boolean? fragment_length
    Boolean? output_prefix
    Boolean? confidence
    Boolean? debug
  }
  command <<<
    run_tasmanian \
      ~{if (reference_fast_a) then "--reference-fasta" else ""} \
      ~{if (unmask_genome) then "--unmask-genome" else ""} \
      ~{if (base_quality) then "--base-quality" else ""} \
      ~{if (filter_in_del) then "--filter-indel" else ""} \
      ~{if (filter_length) then "--filter-length" else ""} \
      ~{if (soft_clip_bypass) then "--soft-clip-bypass" else ""} \
      ~{if (mapping_quality) then "--mapping-quality" else ""} \
      ~{if (fragment_length) then "--fragment-length" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (confidence) then "--confidence" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    reference_fast_a: ""
    unmask_genome: "(convert masked bases to upper case and include them in the calculations - default=False)"
    base_quality: "(default=20)"
    filter_in_del: "(exclude reads with indels default=False)"
    filter_length: "(include only reads with x,y range of lengths, default=0, 76)"
    soft_clip_bypass: "(Decide when softclipped base is correct(0). Don't use these bases(1). Force use them(2).  default=0)"
    mapping_quality: "(minimum allowed mapping quality -defailt=0)"
    fragment_length: "(use fragments withi these lengths ONLY)"
    output_prefix: "(use this prefix for the output and logging files)"
    confidence: "(number of bases in the complement region of the read)"
    debug: "(create a log file)"
  }
  output {
    File out_stdout = stdout()
  }
}