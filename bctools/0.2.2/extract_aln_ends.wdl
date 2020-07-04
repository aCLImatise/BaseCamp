version 1.0

task ExtractAlnEnds.py {
  input {
    String? outfile
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    extract_aln_ends.py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    outfile: "Write results to this file. (default: None)"
    verbose: "Be verbose. (default: False)"
    debug: "Print lots of debugging information (default: False)"
    in_file: "Path to alignments in SAM or BAM format."
  }
}