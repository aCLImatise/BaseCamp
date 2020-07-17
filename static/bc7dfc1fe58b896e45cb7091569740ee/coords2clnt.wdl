version 1.0

task Coords2clnt.py {
  input {
    String? outfile
    Boolean? three_prime
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    coords2clnt.py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--threeprime" false="" three_prime} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    three_prime: "Set position one nt downstream of 3'-end as crosslinked nucleotide."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to bed input file."
  }
}