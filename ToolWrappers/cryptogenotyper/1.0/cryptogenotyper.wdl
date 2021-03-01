version 1.0

task Cryptogenotyper {
  input {
    Boolean? verbose
    File? path_directory_forward
    Int? marker
    String? seqtype
    Int? forward_primer_name
    Int? reverse_primer_name
    String? output_prefix
    File? database_file
    Boolean? noheader_line
  }
  command <<<
    cryptogenotyper \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(path_directory_forward) then ("--input " +  '"' + path_directory_forward + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if defined(forward_primer_name) then ("--forwardprimername " +  '"' + forward_primer_name + '"') else ""} \
      ~{if defined(reverse_primer_name) then ("--reverseprimername " +  '"' + reverse_primer_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--outputprefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(database_file) then ("--databasefile " +  '"' + database_file + '"') else ""} \
      ~{if (noheader_line) then "--noheaderline" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cryptogenotyper:1.0--py_3"
  }
  parameter_meta {
    verbose: "Turn on verbose logging [False]."
    path_directory_forward: "Path to directory with AB1 forward and reverse files\\nOR path to a single AB1 file"
    marker: "Name of the marker. Currently gp60 and 18S markers are\\nsupported"
    seqtype: "Input sequences type. Select one option out of these\\nthree: contig - both F and R sequences provided\\nforward - forward only sequence provided reverse -\\nreverse only sequence provided"
    forward_primer_name: "Name of the forward primer to identify forward read\\n(e.g. gp60F, SSUF)"
    reverse_primer_name: "Name of the reverse primer to identify forward read\\n(e.g. gp60R, SSUR)"
    output_prefix: "Output name prefix for the results (e.g. test results\\nin test_report.fa)"
    database_file: "Path to custom database reference FASTA file"
    noheader_line: "Display header on tab-delimited file [False]"
  }
  output {
    File out_stdout = stdout()
  }
}