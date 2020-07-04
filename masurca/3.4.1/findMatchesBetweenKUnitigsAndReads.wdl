version 1.0

task FindMatchesBetweenKUnitigsAndReads {
  input {
    Boolean? long
    String? output_file_kunitigsreadsmatches
    String? mer
    Boolean? gzip
    String? threads
    Boolean? verbose
    String cmdline_parse
    String kuni_tig_file
  }
  command <<<
    findMatchesBetweenKUnitigsAndReads \
      ~{cmdline_parse} \
      ~{kuni_tig_file} \
      ~{true="--long" false="" long} \
      ~{if defined(output_file_kunitigsreadsmatches) then ("--output " +  '"' + output_file_kunitigsreadsmatches + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    long: "Long output format (false)"
    output_file_kunitigsreadsmatches: "Output file (kunitigs_reads_matches)"
    mer: "*Length of mer"
    gzip: "Gzip output (false)"
    threads: "Number of threads (1)"
    verbose: "Be verbose (false)"
    cmdline_parse: ""
    kuni_tig_file: ""
  }
}