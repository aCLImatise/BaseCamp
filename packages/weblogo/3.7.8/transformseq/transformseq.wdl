version 1.0

task Transformseq {
  input {
    File? fin
    String? format_in
    File? f_out
    String? format_out
    Boolean? seg
    String? subsample
    Boolean? reverse
    Boolean? complement
    String sequence_data_dot_fa
    String sequence_logo_dot_eps
  }
  command <<<
    transformseq \
      ~{sequence_data_dot_fa} \
      ~{sequence_logo_dot_eps} \
      ~{if defined(fin) then ("--fin " +  '"' + fin + '"') else ""} \
      ~{if defined(format_in) then ("--format-in " +  '"' + format_in + '"') else ""} \
      ~{if defined(f_out) then ("--fout " +  '"' + f_out + '"') else ""} \
      ~{if defined(format_out) then ("--format-out " +  '"' + format_out + '"') else ""} \
      ~{if (seg) then "--seg" else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (complement) then "--complement" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/weblogo:3.7.8--py_0"
  }
  parameter_meta {
    fin: "Sequence input file (default: stdin)"
    format_in: "Multiple sequence alignment format: (clustal,\\nfasta, plain, msf, genbank, nbrf, nexus, phylip,\\nstockholm, intelligenetics, table, array)"
    f_out: "Output file (default: stdout)"
    format_out: "Multiple sequence alignment output format:\\n(clustal, fasta, plain, intelligenetics, table,\\narray) (Default: fasta)"
    seg: "Mask low complexity regions in protein sequences."
    subsample: "Return a random subsample of the sequences."
    reverse: "reverse sequences"
    complement: "complement DNA sequences"
    sequence_data_dot_fa: ""
    sequence_logo_dot_eps: ""
  }
  output {
    File out_stdout = stdout()
    File out_f_out = "${in_f_out}"
  }
}