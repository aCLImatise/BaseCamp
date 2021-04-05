version 1.0

task AmptkFilter {
  input {
    Boolean? otu_table
    Boolean? fast_a
    Boolean? out
    Boolean? mock_barcode
    Boolean? mc
    Boolean? calculate
    Boolean? drop
    Boolean? negatives
    Boolean? ignore
    Boolean? index_bleed
    Boolean? threshold
    Boolean? subtract
    Boolean? delimiter
    Boolean? min_reads_otu
    Boolean? min_samples_otu
    Boolean? col_order
    Boolean? keep_mock
    Boolean? show_stats
    Boolean? debug
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk filter \
      ~{arguments} \
      ~{if (otu_table) then "--otu_table" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (mock_barcode) then "--mock_barcode" else ""} \
      ~{if (mc) then "--mc" else ""} \
      ~{if (calculate) then "--calculate" else ""} \
      ~{if (drop) then "--drop" else ""} \
      ~{if (negatives) then "--negatives" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (index_bleed) then "--index_bleed" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (subtract) then "--subtract" else ""} \
      ~{if (delimiter) then "--delimiter" else ""} \
      ~{if (min_reads_otu) then "--min_reads_otu" else ""} \
      ~{if (min_samples_otu) then "--min_samples_otu" else ""} \
      ~{if (col_order) then "--col_order" else ""} \
      ~{if (keep_mock) then "--keep_mock" else ""} \
      ~{if (show_stats) then "--show_stats" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    otu_table: "OTU table"
    fast_a: "OTU fasta"
    out: "Base name for output files. Default: use input basename"
    mock_barcode: "Name of barcode of mock community (Recommended)"
    mc: "Mock community FASTA file. Required if -b passed. [synmock,mock1,mock2,mock3,other]"
    calculate: "Calculate index-bleed options. Default: all [in,all]"
    drop: "Sample(s) to drop from OTU table. (list, separate by space)"
    negatives: "Negative sample names. (list, separate by space)"
    ignore: "Ignore sample(s) during index-bleed calc (list, separate by space)"
    index_bleed: "Filter index bleed between samples (percent). Default: 0.005"
    threshold: "Number to use for establishing read count threshold. Default: max [max,sum,top5,top10,top25]"
    subtract: "Threshold to subtract from all OTUs (any number or auto). Default: 0"
    delimiter: "Delimiter of OTU tables. Default: tsv  [csv, tsv]"
    min_reads_otu: "Minimum number of reads for valid OTU from whole experiment. Default: 2"
    min_samples_otu: "Minimum number of samples for valid OTU from whole experiment. Default: 1"
    col_order: "Column order (separate by space). Default: sort naturally"
    keep_mock: "Keep Spike-in mock community. Default: False"
    show_stats: "Show OTU stats on STDOUT"
    debug: "Keep intermediate files."
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}