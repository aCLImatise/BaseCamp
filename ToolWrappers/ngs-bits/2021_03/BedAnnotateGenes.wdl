version 1.0

task BedAnnotateGenes {
  input {
    File? in
    File? out
    Int? extend
    Boolean? test
    Boolean? clear
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateGenes \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(extend) then ("-extend " +  '"' + extend + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (clear) then "-clear" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    extend: "The number of bases to extend the gene regions before annotation.\\nDefault value: '0'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    clear: "Clear all annotations present in the input file.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}