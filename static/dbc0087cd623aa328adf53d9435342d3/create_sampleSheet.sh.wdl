version 1.0

task CreateSampleSheetsh {
  input {
    Boolean? mode
    Boolean? fast_xdir
    Boolean? outdir
    Boolean? no_check
    Boolean? interactive
    Boolean? force
    Boolean? dry_run
  }
  command <<<
    create_sampleSheet_sh \
      ~{if (mode) then "--mode" else ""} \
      ~{if (fast_xdir) then "--fastxDir" else ""} \
      ~{if (outdir) then "--outDir" else ""} \
      ~{if (no_check) then "--nocheck" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (dry_run) then "--dryrun" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.5--0"
  }
  parameter_meta {
    mode: ": Choose mode from illumina, ncbi, flex, assembly  (default: illumina)"
    fast_xdir: ": Path to existing directory containing the fastq or fasta files (default: /)"
    outdir: ": Path to existing outDir (default: fastxDir)"
    no_check: ": Do not check consistency of sample sheet"
    interactive: ": Ask before starting the program"
    force: ": Overwrite existing samples.tsv files in OutDir"
    dry_run: ": Perform a dry-run"
  }
  output {
    File out_stdout = stdout()
  }
}