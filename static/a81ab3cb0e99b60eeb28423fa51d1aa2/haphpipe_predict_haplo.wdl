version 1.0

task HaphpipePredictHaplo {
  input {
    String? fq_one
    String? fq_two
    String? ref_fa
    String? region_txt
    String? outdir
    Int? min_read_length
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    haphpipe predict_haplo \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(region_txt) then ("--region_txt " +  '"' + region_txt + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_readlength " +  '"' + min_read_length + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    ref_fa: "Reference sequence used to align reads (fasta)"
    region_txt: "File with regions to perform haplotype reconstruction. Regions should be specified using the samtools region specification format: RNAME[:STARTPOS[-ENDPOS]]"
    outdir: "Output directory (default: .)"
    min_read_length: "Minimum readlength passed to PredictHaplo (default: 36)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}