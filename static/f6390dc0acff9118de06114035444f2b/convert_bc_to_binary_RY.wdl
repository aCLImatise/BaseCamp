version 1.0

task ConvertBcToBinaryRY.py {
  input {
    String? outfile
    Boolean? fast_a_format
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    convert_bc_to_binary_RY.py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--fasta-format" false="" fast_a_format} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    fast_a_format: "Read and write fasta instead of fastq format."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to fastq input file."
  }
}