version 1.0

task MakeKreportpy {
  input {
    File? kraken
    File? taxonomy
    File? output_kraken_report
    Boolean? use_read_len
  }
  command <<<
    make_kreport_py \
      ~{if defined(kraken) then ("--kraken " +  '"' + kraken + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(output_kraken_report) then ("--output " +  '"' + output_kraken_report + '"') else ""} \
      ~{if (use_read_len) then "--use-read-len" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kraken: "Kraken output file (5 tab-delimited columns, taxid in\\n3rd column)"
    taxonomy: "Output taxonomy file from make_ktaxonomy.py"
    output_kraken_report: "Output kraken report file"
    use_read_len: "Make report file using sum of read lengths [default:\\nread counts]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_kraken = "${in_kraken}"
    File out_taxonomy = "${in_taxonomy}"
    File out_output_kraken_report = "${in_output_kraken_report}"
  }
}