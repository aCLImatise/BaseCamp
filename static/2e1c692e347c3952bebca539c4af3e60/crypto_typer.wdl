version 1.0

task CryptoTyper {
  input {
    Boolean? verbose
    String? path_directory_forward
    String? marker
    String? seqtype
    String? forward_primer_name
    String? reverse_primer_name
    String? output_prefix
  }
  command <<<
    crypto_typer \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(path_directory_forward) then ("--input " +  '"' + path_directory_forward + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if defined(forward_primer_name) then ("--forwardprimername " +  '"' + forward_primer_name + '"') else ""} \
      ~{if defined(reverse_primer_name) then ("--reverseprimername " +  '"' + reverse_primer_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--outputprefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Turn on verbose logging [False]."
    path_directory_forward: "Path to directory with AB1 forward and reverse files OR path to a single AB1 file"
    marker: "Name of the marker. Currently gp60 and 18S markers are supported"
    seqtype: "Input sequences type. Select one option out of these three: contig - both F and R sequences provided forward - forward only sequence provided reverse - reverse only sequence provided"
    forward_primer_name: "Name of the forward primer to identify forward read (e.g. gp60F, SSUF)"
    reverse_primer_name: "Name of the reverse primer to identify forward read (e.g. gp60R, SSUR)"
    output_prefix: "Output name prefix for the results (e.g. test results in test_report.fa)"
  }
}