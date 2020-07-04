version 1.0

task Platon {
  input {
    String? db
    String? mode
    Boolean? characterize
    String? output_directory_default
    String? threads
    Boolean? verbose
  }
  command <<<
    platon \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--characterize" false="" characterize} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    db: "database path (default = <platon_path>/db)"
    mode: "applied filter mode: sensitivity: RDS only (>= 95% sensitivity); specificity: RDS only (>=99.9% specificity); accuracy: RDS & characterization heuristics (highest accuracy) (default = accuracy)"
    characterize: "deactivate filters; characterize all contigs"
    output_directory_default: "output directory (default = current working directory)"
    threads: "number of threads to use (default = number of available CPUs)"
    verbose: "print verbose information"
  }
}