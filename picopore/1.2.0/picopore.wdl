version 1.0

task Picopore {
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
    String pico_pore_real_time
    String pico_pore_test
    String pico_pore_rename
    String list_directories_shrink
  }
  command <<<
    picopore \
      ~{pico_pore_real_time} \
      ~{pico_pore_test} \
      ~{pico_pore_rename} \
      ~{list_directories_shrink} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (revert) then "--revert" else ""} \
      ~{if (no_fast_q) then "--no-fastq" else ""} \
      ~{if (no_summary) then "--no-summary" else ""} \
      ~{if defined(manual) then ("--manual " +  '"' + manual + '"') else ""} \
      ~{if (skip_confirm_step) then "-y" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_skip_root) then "--no-skip-root" else ""} \
      ~{if defined(print_every) then ("--print-every " +  '"' + print_every + '"') else ""}
  >>>
  parameter_meta {
    mode: "choose compression mode"
    revert: "reverts files to original size (lossless modes only)"
    no_fast_q: "retain FASTQ data (raw mode only) (Default: --fastq)"
    no_summary: "retain summary data (raw mode only) (Default: --no-\\nsummary)"
    manual: "manually remove only groups whose paths contain STR\\n(raw mode only, regular expressions permitted,\\noverrides defaults)"
    skip_confirm_step: "skip confirm step"
    threads: "number of threads (Default: 1)"
    prefix: "add prefix to output files to prevent overwrite"
    no_skip_root: "ignore files in root input directories for albacore\\nrealtime compression (Default: --no-skip-root)"
    print_every: "print a dot every approximately INT files, or -1 to\\nsilence (Default: 100)\\n"
    pico_pore_real_time: "monitors a directory for new reads and compresses them in real time"
    pico_pore_test: "compresses to temporary files and checks that all datasets and attributes are equal (lossless modes only)"
    pico_pore_rename: "renames groups and datasets within FAST5 files"
    list_directories_shrink: "list of directories or fast5 files to shrink"
  }
  output {
    File out_stdout = stdout()
  }
}