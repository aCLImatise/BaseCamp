version 1.0

task Bash5toolspy {
  input {
    Boolean? verbose
    Boolean? profile
    Boolean? debug
    File? outfile_prefix
    String? read_type
    File? out_type
    Int? minlength
    Int? min_read_score
    Int? min_passes
  }
  command <<<
    bash5tools_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(outfile_prefix) then ("--outFilePrefix " +  '"' + outfile_prefix + '"') else ""} \
      ~{if defined(read_type) then ("--readType " +  '"' + read_type + '"') else ""} \
      ~{if defined(out_type) then ("--outType " +  '"' + out_type + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_read_score) then ("--minReadScore " +  '"' + min_read_score + '"') else ""} \
      ~{if defined(min_passes) then ("--minPasses " +  '"' + min_passes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Set the verbosity level (default: None)"
    profile: "Print runtime profile at exit (default: False)"
    debug: "Catch exceptions in debugger (requires ipdb) (default:\\nFalse)"
    outfile_prefix: "output filename prefix [None]"
    read_type: "read type (ccs, subreads, or unrolled) []"
    out_type: "output file type (fasta, fastq) [fasta]"
    minlength: "min read length [0]"
    min_read_score: "min read score, valid only with\\n--readType={unrolled,subreads} [0]"
    min_passes: "min number of CCS passes, valid only with\\n--readType=ccs [0]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile_prefix = "${in_outfile_prefix}"
    File out_out_type = "${in_out_type}"
  }
}