version 1.0

task ConvertBcToBinaryRYpy {
  input {
    File? outfile
    Boolean? fast_a_format
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    convert_bc_to_binary_RY_py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (fast_a_format) then "--fasta-format" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    fast_a_format: "Read and write fasta instead of fastq format."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to fastq input file."
  }
  output {
    File out_stdout = stdout()
  }
}