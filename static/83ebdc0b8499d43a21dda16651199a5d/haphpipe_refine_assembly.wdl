version 1.0

task HaphpipeRefineAssembly {
  input {
    String? fq_one
    String? fq_two
    String? f_qu
    String? ref_fa
    String? outdir
    Int? max_step
    String? subsample
    String? seed
    String? sample_id
    String? n_cpu
    String? x_mx
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    haphpipe refine_assembly \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(max_step) then ("--max_step " +  '"' + max_step + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if defined(x_mx) then ("--xmx " +  '"' + x_mx + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    f_qu: "Fastq file with unpaired reads"
    ref_fa: "Assembly to refine"
    outdir: "Output directory (default: .)"
    max_step: "Maximum number of refinement steps (default: 1)"
    subsample: "Use a subsample of reads for refinement."
    seed: "Seed for random number generator (ignored if not subsampling)."
    sample_id: "Sample ID. Used as read group ID in BAM (default: sampleXX)"
    n_cpu: "Number of CPUs to use (default: 1)"
    x_mx: "Maximum heap size for Java VM, in GB. (default: 32)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}