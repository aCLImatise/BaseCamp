version 1.0

task GenesToBed {
  input {
    String? source
    String? mode
    File? in
    File? out
    Boolean? fall_back
    Boolean? an_no
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    GenesToBed \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (fall_back) then "-fallback" else ""} \
      ~{if (an_no) then "-anno" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    source: "Transcript source database.\\nValid: 'ccds,ensembl'"
    mode: "Mode: gene = start/end of all transcripts, exon = start/end of all exons of all transcripts.\\nValid: 'gene,exon'"
    in: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    fall_back: "Allow fallback to all source databases, if no transcript for a gene is defined in the selected source database.\\nDefault value: 'false'"
    an_no: "Annotate transcript identifier in addition to gene name.\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}