version 1.0

task Platon {
  input {
    File? db
    String? prefix
    Directory? output_directory_default
    String? mode
    Boolean? characterize
    Boolean? verbose
    Int? threads
  }
  command <<<
    platon \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (characterize) then "--characterize" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/platon:1.6--pyhdfd78af_0"
  }
  parameter_meta {
    db: "database path (default = <platon_path>/db)"
    prefix: "Prefix for output files"
    output_directory_default: "Output directory (default = current working directory)"
    mode: "applied filter mode: sensitivity: RDS only (>= 95%\\nsensitivity); specificity: RDS only (>=99.9%\\nspecificity); accuracy: RDS & characterization\\nheuristics (highest accuracy) (default = accuracy)"
    characterize: "deactivate filters; characterize all contigs"
    verbose: "Print verbose information"
    threads: "Number of threads to use (default = number of\\navailable CPUs)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}