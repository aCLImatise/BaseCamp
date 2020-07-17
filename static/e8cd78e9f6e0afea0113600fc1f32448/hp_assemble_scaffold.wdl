version 1.0

task HpAssembleScaffold {
  input {
    String? contigs_fa
    String? ref_fa
    String? outdir
    String? seqname
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    hp_assemble_scaffold \
      ~{if defined(contigs_fa) then ("--contigs_fa " +  '"' + contigs_fa + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    contigs_fa: "Fasta file with assembled contigs"
    ref_fa: "Fasta file with reference genome to scaffold against"
    outdir: "Output directory (default: .)"
    seqname: "Name to append to scaffold sequence. (default: sample01)"
    keep_tmp: "Additional options (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}