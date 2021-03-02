version 1.0

task HpFinalizeAssembly {
  input {
    Int? fq_one
    Int? fq_two
    File? f_qu
    File? ref_fa
    Directory? outdir
    String? bt_two_preset
    String? sample_id
    Int? n_cpu
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    hp_finalize_assembly \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(bt_two_preset) then ("--bt2_preset " +  '"' + bt_two_preset + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 1"
    f_qu: "Fastq file with unpaired reads"
    ref_fa: "Consensus fasta file"
    outdir: "Output directory (default: .)"
    bt_two_preset: "Bowtie2 preset to use (default: very-sensitive)"
    sample_id: "Sample ID (default: sampleXX)"
    n_cpu: "Number of CPU to use"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}