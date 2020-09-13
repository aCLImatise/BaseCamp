version 1.0

task Coords2clntpy {
  input {
    File? outfile
    Boolean? three_prime
    Boolean? verbose
    Boolean? debug
    String in_file
  }
  command <<<
    coords2clnt_py \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (three_prime) then "--threeprime" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    three_prime: "Set position one nt downstream of 3'-end as\\ncrosslinked nucleotide."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to bed input file."
  }
  output {
    File out_stdout = stdout()
  }
}