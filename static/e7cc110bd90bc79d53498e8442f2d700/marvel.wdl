version 1.0

task Marvel {
  input {
    Directory? input_dir
    Int? threads
    Directory? output_dir
    Int? min_len
    String? confidence
    Directory? db
    Boolean? force
    Boolean? verbose
    Boolean? debug
    Boolean? keep
    Boolean? cite
  }
  command <<<
    marvel \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (cite) then "--cite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dir: "Path to a folder containing metagenomic bins in .fa or\\n.fasta format"
    threads: "Number of CPU threads to be used by Prokka and hmmscan\\n(default=1)"
    output_dir: "Output directory"
    min_len: "Bin minimum size"
    confidence: "Confidence threshold"
    db: "Database directory"
    force: "Force overwrite"
    verbose: "Print verbose output"
    debug: "Enable debug mode"
    keep: "Keep all intermediate files"
    cite: "Show citations"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}