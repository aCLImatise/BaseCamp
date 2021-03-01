version 1.0

task DebarcerCall {
  input {
    Directory? outdir
    File? config
    File? reference
    String? ref_threshold
    String? alternative_threshold
    Int? filter_threshold
    Int? fam_size
  }
  command <<<
    debarcer call \
      ~{if defined(outdir) then ("--Outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(ref_threshold) then ("--RefThreshold " +  '"' + ref_threshold + '"') else ""} \
      ~{if defined(alternative_threshold) then ("--AlternativeThreshold " +  '"' + alternative_threshold + '"') else ""} \
      ~{if defined(filter_threshold) then ("--FilterThreshold " +  '"' + filter_threshold + '"') else ""} \
      ~{if defined(fam_size) then ("--Famsize " +  '"' + fam_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    outdir: "Output directory where subdirectories are created"
    config: "Path to the config file"
    reference: "Path to the refeence genome"
    ref_threshold: "Maximum reference frequency to consider (in percent)\\nalternative variants (ie. position with ref freq <=\\nref_threshold is considered variable)"
    alternative_threshold: "Minimum allele frequency (in percent) to consider an\\nalternative allele at a variable position (ie. allele\\nfreq >= alt_threshold and ref freq <= ref_threshold:\\nalternative allele)"
    filter_threshold: "Minimum number of reads to pass alternative variants\\n(ie. filter = PASS if variant depth >= alt_threshold)"
    fam_size: "Minimum UMI family size\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}