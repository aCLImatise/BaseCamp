version 1.0

task Platon {
  input {
    File? db
    String? mode
    Boolean? characterize
    Directory? output_directory_default
    File? prefix
    Int? threads
    Boolean? verbose
  }
  command <<<
    platon \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (characterize) then "--characterize" else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "database path (default = <platon_path>/db)"
    mode: "applied filter mode: sensitivity: RDS only (>= 95%\\nsensitivity); specificity: RDS only (>=99.9%\\nspecificity); accuracy: RDS & characterization\\nheuristics (highest accuracy) (default = accuracy)"
    characterize: "deactivate filters; characterize all contigs"
    output_directory_default: "output directory (default = current working directory)"
    prefix: "file prefix (default = input file name)"
    threads: "number of threads to use (default = number of\\navailable CPUs)"
    verbose: "print verbose information"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}