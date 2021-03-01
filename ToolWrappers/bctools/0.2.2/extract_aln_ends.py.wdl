version 1.0

task ExtractAlnEndspy {
  input {
    File? outfile
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    extract_aln_ends_py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "Write results to this file. (default: None)"
    verbose: "Be verbose. (default: False)"
    debug: "Print lots of debugging information (default: False)"
    in_file: "Path to alignments in SAM or BAM format."
  }
  output {
    File out_stdout = stdout()
  }
}