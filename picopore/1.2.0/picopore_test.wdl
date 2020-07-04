version 1.0

task PicoporeTest {
  input {
    String? mode
    Boolean? revert
    Boolean? no_fast_q
    Boolean? no_summary
    String? manual
    Boolean? skip_confirm_step
    Int? threads
    String? prefix
    Boolean? no_skip_root
    Int? print_every
    String list_fast_files
  }
  command <<<
    picopore-test \
      ~{list_fast_files} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--revert" false="" revert} \
      ~{true="--no-fastq" false="" no_fast_q} \
      ~{true="--no-summary" false="" no_summary} \
      ~{if defined(manual) then ("--manual " +  '"' + manual + '"') else ""} \
      ~{true="-y" false="" skip_confirm_step} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no-skip-root" false="" no_skip_root} \
      ~{if defined(print_every) then ("--print-every " +  '"' + print_every + '"') else ""}
  >>>
  parameter_meta {
    mode: "choose compression mode"
    revert: "reverts files to original size (lossless modes only)"
    no_fast_q: "retain FASTQ data (raw mode only) (Default: --fastq)"
    no_summary: "retain summary data (raw mode only) (Default: --no- summary)"
    manual: "manually remove only groups whose paths contain STR (raw mode only, regular expressions permitted, overrides defaults)"
    skip_confirm_step: "skip confirm step"
    threads: "number of threads (Default: 1)"
    prefix: "add prefix to output files to prevent overwrite"
    no_skip_root: "ignore files in root input directories for albacore realtime compression (Default: --no-skip-root)"
    print_every: "print a dot every approximately INT files, or -1 to silence (Default: 100)"
    list_fast_files: "list of directories or fast5 files to shrink"
  }
}