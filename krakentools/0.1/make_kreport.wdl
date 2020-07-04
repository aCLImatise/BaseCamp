version 1.0

task MakeKreport.py {
  input {
    String? kraken
    String? taxonomy
    String? output_kraken_report
    Boolean? use_read_len
  }
  command <<<
    make_kreport.py \
      ~{if defined(kraken) then ("--kraken " +  '"' + kraken + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(output_kraken_report) then ("--output " +  '"' + output_kraken_report + '"') else ""} \
      ~{true="--use-read-len" false="" use_read_len}
  >>>
  parameter_meta {
    kraken: "Kraken output file (5 tab-delimited columns, taxid in 3rd column)"
    taxonomy: "Output taxonomy file from make_ktaxonomy.py"
    output_kraken_report: "Output kraken report file"
    use_read_len: "Make report file using sum of read lengths [default: read counts]"
  }
}