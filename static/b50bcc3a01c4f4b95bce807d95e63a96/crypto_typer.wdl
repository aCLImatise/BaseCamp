version 1.0

task CryptoTyper {
  input {
    Boolean? verbose
    File? path_directory_forward
    Int? marker
    String? seqtype
    Int? forward_primer_name
    Int? reverse_primer_name
    String? output_prefix
  }
  command <<<
    crypto_typer \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(path_directory_forward) then ("--input " +  '"' + path_directory_forward + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if defined(forward_primer_name) then ("--forwardprimername " +  '"' + forward_primer_name + '"') else ""} \
      ~{if defined(reverse_primer_name) then ("--reverseprimername " +  '"' + reverse_primer_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--outputprefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Turn on verbose logging [False]."
    path_directory_forward: "Path to directory with AB1 forward and reverse files\\nOR path to a single AB1 file"
    marker: "Name of the marker. Currently gp60 and 18S markers are\\nsupported"
    seqtype: "Input sequences type. Select one option out of these\\nthree: contig - both F and R sequences provided\\nforward - forward only sequence provided reverse -\\nreverse only sequence provided"
    forward_primer_name: "Name of the forward primer to identify forward read\\n(e.g. gp60F, SSUF)"
    reverse_primer_name: "Name of the reverse primer to identify forward read\\n(e.g. gp60R, SSUR)"
    output_prefix: "Output name prefix for the results (e.g. test results\\nin test_report.fa)"
  }
  output {
    File out_stdout = stdout()
  }
}