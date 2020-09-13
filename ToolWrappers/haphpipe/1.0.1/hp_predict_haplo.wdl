version 1.0

task HpPredictHaplo {
  input {
    Int? fq_one
    Int? fq_two
    String? ref_fa
    File? region_txt
    Directory? outdir
    Int? min_read_length
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    hp_predict_haplo \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(region_txt) then ("--region_txt " +  '"' + region_txt + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_readlength " +  '"' + min_read_length + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    ref_fa: "Reference sequence used to align reads (fasta)"
    region_txt: "File with regions to perform haplotype reconstruction.\\nRegions should be specified using the samtools region\\nspecification format: RNAME[:STARTPOS[-ENDPOS]]"
    outdir: "Output directory (default: .)"
    min_read_length: "Minimum readlength passed to PredictHaplo (default:\\n36)"
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