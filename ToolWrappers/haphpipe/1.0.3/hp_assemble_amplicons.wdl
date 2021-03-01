version 1.0

task HpAssembleAmplicons {
  input {
    String? ref_gtf
    File? contigs_fa
    File? ref_fa
    Directory? outdir
    String? sample_id
    Int? padding
    Int? min_contig_len
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    hp_assemble_amplicons \
      ~{if defined(ref_gtf) then ("--ref_gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(contigs_fa) then ("--contigs_fa " +  '"' + contigs_fa + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    ref_gtf: "[--outdir OUTDIR]"
    contigs_fa: "Fasta file with assembled contigs"
    ref_fa: "Fasta file with reference genome to scaffold against"
    outdir: "Output directory (default: .)"
    sample_id: "Sample ID. (default: sampleXX)"
    padding: "Bases to include outside reference annotation.\\n(default: 50)"
    min_contig_len: "Minimum contig length for tiling path (default: 200)"
    keep_tmp: "Additional options (default: False)"
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