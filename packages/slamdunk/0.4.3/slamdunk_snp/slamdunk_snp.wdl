version 1.0

task SlamdunkSnp {
  input {
    Directory? output_dir
    File? reference
    Int? min_coverage
    Float? var_fraction
    Int? threads
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
    var_fraction: "Minimimum variant fraction to call variant (default:\\n0.8)"
    threads: "Thread number (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}