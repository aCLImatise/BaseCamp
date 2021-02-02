version 1.0

task AMUSEDKS {
  input {
    String? _query_sequences
    String? compare_seqs_background
    File? _output_file
    Int? max_nmer_consider
    Int? smooth_data_how
    Int? number_cpu_use
    Boolean? ds
    Boolean? one_p
    Boolean? nu
  }
  command <<<
    AMUSED_KS \
      ~{if defined(_query_sequences) then ("-q " +  '"' + _query_sequences + '"') else ""} \
      ~{if defined(compare_seqs_background) then ("-b " +  '"' + compare_seqs_background + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(max_nmer_consider) then ("-s " +  '"' + max_nmer_consider + '"') else ""} \
      ~{if defined(smooth_data_how) then ("-m " +  '"' + smooth_data_how + '"') else ""} \
      ~{if defined(number_cpu_use) then ("-t " +  '"' + number_cpu_use + '"') else ""} \
      ~{if (ds) then "-ds" else ""} \
      ~{if (one_p) then "-1p" else ""} \
      ~{if (nu) then "-nu" else ""}
  >>>
  parameter_meta {
    _query_sequences: "= query sequences"
    compare_seqs_background: "= compare seqs to these background seqs"
    _output_file: "= output file"
    max_nmer_consider: "= max n-mer to consider [default=8]"
    smooth_data_how: "= smooth data over how many bases to generate expected distribution for one-sample KS test (when no background set is included) [default=5]"
    number_cpu_use: "= number of CPU threads to use [default=1]"
    ds: "= double stranded (reverse complement sequences too)"
    one_p: "= sequences not in fasta format: each line is a full sequence"
    nu: "= no changing to upper case before scan (non ATGC bases are discarded)"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}