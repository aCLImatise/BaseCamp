version 1.0

task Picoporerename {
  input {
    String? pattern
    String? replacement
    Boolean? skip_confirm_step
    Int? threads
    String? prefix
    Boolean? no_skip_root
    Int? print_every
    Boolean? v
    String list_directories_shrink
  }
  command <<<
    picopore_rename \
      ~{list_directories_shrink} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{if (skip_confirm_step) then "-y" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_skip_root) then "--no-skip-root" else ""} \
      ~{if defined(print_every) then ("--print-every " +  '"' + print_every + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    pattern: "String or regex to replace"
    replacement: "String or regex replacement for PATTERN"
    skip_confirm_step: "skip confirm step"
    threads: "number of threads (Default: 1)"
    prefix: "add prefix to output files to prevent overwrite"
    no_skip_root: "ignore files in root input directories for albacore\\nrealtime compression (Default: --no-skip-root)"
    print_every: "print a dot every approximately INT files, or -1 to\\nsilence (Default: 100)\\n"
    v: ""
    list_directories_shrink: "list of directories or fast5 files to shrink"
  }
  output {
    File out_stdout = stdout()
  }
}