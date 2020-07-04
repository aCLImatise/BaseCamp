version 1.0

task HaphpipeAlignReads {
  input {
    String? fq_one
    String? fq_two
    String? f_qu
    String? ref_fa
    String? outdir
    String? bt_two_preset
    String? sample_id
    Boolean? no_realign
    Boolean? remove_duplicates
    Boolean? encoding
    String? n_cpu
    String? x_mx
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    haphpipe align_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(bt_two_preset) then ("--bt2_preset " +  '"' + bt_two_preset + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{true="--no_realign" false="" no_realign} \
      ~{true="--remove_duplicates" false="" remove_duplicates} \
      ~{true="--encoding" false="" encoding} \
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
    ref_fa: "Reference fasta file."
    outdir: "Output directory (default: .)"
    bt_two_preset: "Bowtie2 preset (default: sensitive-local)"
    sample_id: "Sample ID. Used as read group ID in BAM (default: sampleXX)"
    no_realign: "Do not realign indels (default: False)"
    remove_duplicates: "Remove duplicates from final alignment. Otherwise duplicates are marked but not removed. (default: False)"
    encoding: "{Phred+33,Phred+64} Quality score encoding"
    n_cpu: "Number of CPUs to use (default: 1)"
    x_mx: "Maximum heap size for Java VM, in GB. (default: 32)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}