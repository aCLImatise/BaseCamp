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
      ~{true="-fallback" false="" fall_back} \
      ~{true="-anno" false="" an_no} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    source: "Transcript source database. Valid: 'ccds,ensembl'"
    mode: "Mode: gene = start/end of all transcripts, exon = start/end of all exons of all transcripts. Valid: 'gene,exon'"
    in: "Input TXT file with one gene symbol per line. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    fall_back: "Allow fallback to all source databases, if no transcript for a gene is defined in the selected source database. Default value: 'false'"
    an_no: "Annotate transcript identifier in addition to gene name. Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}