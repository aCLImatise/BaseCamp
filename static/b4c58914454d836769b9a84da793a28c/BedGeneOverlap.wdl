version 1.0

task BedGeneOverlap {
  input {
    String? source
    File? in
    File? out
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedGeneOverlap \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    source: "Transcript source database.\\nValid: 'ccds,ensembl'"
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}