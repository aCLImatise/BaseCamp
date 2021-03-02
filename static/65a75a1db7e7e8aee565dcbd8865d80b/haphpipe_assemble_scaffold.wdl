version 1.0

task HaphpipeAssembleScaffold {
  input {
    File? contigs_fa
    File? ref_fa
    Directory? outdir
    Int? seqname
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    haphpipe assemble_scaffold \
      ~{if defined(contigs_fa) then ("--contigs_fa " +  '"' + contigs_fa + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    contigs_fa: "Fasta file with assembled contigs"
    ref_fa: "Fasta file with reference genome to scaffold against"
    outdir: "Output directory (default: .)"
    seqname: "Name to append to scaffold sequence. (default:\\nsample01)"
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