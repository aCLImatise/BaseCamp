version 1.0

task PicoporeRename {
  input {
    String? pattern
    String? replacement
    Boolean? skip_confirm_step
    Int? threads
    String? prefix
    Boolean? no_skip_root
    Int? print_every
    Boolean? v
    String list_fast_files
  }
  command <<<
    picopore-rename \
      ~{list_fast_files} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{true="-y" false="" skip_confirm_step} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no-skip-root" false="" no_skip_root} \
      ~{if defined(print_every) then ("--print-every " +  '"' + print_every + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    pattern: "String or regex to replace"
    replacement: "String or regex replacement for PATTERN"
    skip_confirm_step: "skip confirm step"
    threads: "number of threads (Default: 1)"
    prefix: "add prefix to output files to prevent overwrite"
    no_skip_root: "ignore files in root input directories for albacore realtime compression (Default: --no-skip-root)"
    print_every: "print a dot every approximately INT files, or -1 to silence (Default: 100)"
    v: ""
    list_fast_files: "list of directories or fast5 files to shrink"
  }
}