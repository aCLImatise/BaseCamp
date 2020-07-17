version 1.0

task SlamdunkSnp {
  input {
    String? output_dir
    String? reference
    String? min_coverage
    String? var_fraction
    String? threads
  }
  command <<<
    slamdunk snp \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(var_fraction) then ("--var-fraction " +  '"' + var_fraction + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    reference: "Reference fasta file"
    min_coverage: "Minimimum coverage to call variant (default: 10)"
    var_fraction: "Minimimum variant fraction to call variant (default: 0.8)"
    threads: "Thread number (default: 1)"
  }
}