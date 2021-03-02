version 1.0

task FindMatchesBetweenKUnitigsAndReads {
  input {
    Boolean? long
    File? output_file_kunitigsreadsmatches
    Int? mer
    Boolean? gzip
    Int? threads
    Boolean? verbose
    String cmdline_parse
    String kuni_tig_file
  }
  command <<<
    findMatchesBetweenKUnitigsAndReads \
      ~{cmdline_parse} \
      ~{kuni_tig_file} \
      ~{if (long) then "--long" else ""} \
      ~{if defined(output_file_kunitigsreadsmatches) then ("--output " +  '"' + output_file_kunitigsreadsmatches + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_output_file_kunitigsreadsmatches = "${in_output_file_kunitigsreadsmatches}"
  }
}