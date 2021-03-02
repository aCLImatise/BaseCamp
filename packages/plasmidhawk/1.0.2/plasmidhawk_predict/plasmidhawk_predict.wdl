version 1.0

task PlasmidhawkPredict {
  input {
    String? var_output
    Boolean? skip
    String? work_dir
    Int? thread
    Int? identity
    Boolean? verbose
    String labs
    String input_pan_genome_annotated_meta
    String input_files
  }
  command <<<
    plasmidhawk predict \
      ~{labs} \
      ~{input_pan_genome_annotated_meta} \
      ~{input_files} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidhawk:1.0.2--0"
  }
  parameter_meta {
    var_output: "output lab-of-origin prediction"
    skip: "Use nucmer results already present in work-dir instead\\nof rerunning"
    work_dir: "output lab-of-origin prediction"
    thread: "Number of threads, default 20"
    identity: "Minimum alignment identity [0,100], default 0"
    verbose: "Print verbose output"
    labs: "input-pangenome-fasta"
    input_pan_genome_annotated_meta: "Lab ownership metadata file"
    input_files: "a list of input fasta file names. If there is one file\\nand it ends with a non-fasta suffix it is assumed that\\nthis file contains a list of input files separated by\\na newline"
  }
  output {
    File out_stdout = stdout()
  }
}