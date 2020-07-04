version 1.0

task PIRATE {
  input {
    Boolean? threads
    Boolean? quiet
    Boolean? retain_intermediate_files
    Boolean? check
    Boolean? i
  }
  command <<<
    PIRATE \
      ~{true="--threads" false="" threads} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-z" false="" retain_intermediate_files} \
      ~{true="--check" false="" check} \
      ~{true="-i" false="" i}
  >>>
  parameter_meta {
    threads: "number of threads/cores used by PIRATE [default: 2]"
    quiet: "switch off verbose"
    retain_intermediate_files: "retain intermediate files [0 = none, 1 = retain pangenome  files (default - re-run using --pan-off), 2 = all]  "
    check: "check installation and run on example files"
    i: ""
  }
}