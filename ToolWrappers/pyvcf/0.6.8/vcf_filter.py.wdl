version 1.0

task VcfFilterpy {
  input {
    Boolean? no_short_circuit
    File? filename_output_nameencoding
    Boolean? no_filtered
    File? local_script
    Int? avg_depth_per_sample
    Int? depth_per_sample
    String? e_blr
    Boolean? one_zero
    Int? site_quality
    Int? genotype_quality
  }
  command <<<
    vcf_filter_py \
      ~{if (no_short_circuit) then "--no-short-circuit" else ""} \
      ~{if defined(filename_output_nameencoding) then ("--output " +  '"' + filename_output_nameencoding + '"') else ""} \
      ~{if (no_filtered) then "--no-filtered" else ""} \
      ~{if defined(local_script) then ("--local-script " +  '"' + local_script + '"') else ""} \
      ~{if defined(avg_depth_per_sample) then ("--avg-depth-per-sample " +  '"' + avg_depth_per_sample + '"') else ""} \
      ~{if defined(depth_per_sample) then ("--depth-per-sample " +  '"' + depth_per_sample + '"') else ""} \
      ~{if defined(e_blr) then ("--eblr " +  '"' + e_blr + '"') else ""} \
      ~{if (one_zero) then "-10" else ""} \
      ~{if defined(site_quality) then ("--site-quality " +  '"' + site_quality + '"') else ""} \
      ~{if defined(genotype_quality) then ("--genotype-quality " +  '"' + genotype_quality + '"') else ""}
  >>>
  parameter_meta {
    no_short_circuit: "Do not stop filter processing on a site if any filter\\nis triggered (default: False)"
    filename_output_nameencoding: "Filename to output [STDOUT] (default:\\n<_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='ANSI_X3.4-1968'>)"
    no_filtered: "Output only sites passing the filters (default: False)"
    local_script: "Python file in current working directory with the\\nfilter classes (default: None)"
    avg_depth_per_sample: "Minimum required average coverage per sample (default:\\n3)"
    depth_per_sample: "Minimum required coverage in each sample (default: 5)"
    e_blr: "Filter sites above this error log odds ratio (default:"
    one_zero: ")"
    site_quality: "Filter sites below this quality (default: 30)"
    genotype_quality: "Filter sites with no genotypes above this quality\\n(default: 50)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_nameencoding = "${in_filename_output_nameencoding}"
  }
}