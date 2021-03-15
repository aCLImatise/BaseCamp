version 1.0

task BamDownsample {
  input {
    File? in
    Float? percentage
    File? out
    Boolean? test
    File? ref
    File? write_cram
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamDownsample \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(percentage) then ("-percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (write_cram) then "-write_cram" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BAM/CRAM file."
    percentage: "Percentage of reads to keep."
    out: "Output BAM/CRAM file."
    test: "Test mode: fix random number generator seed and write kept read names to STDOUT.\\nDefault value: 'false'"
    ref: "Reference genome for CRAM support (mandatory if CRAM is used).\\nDefault value: ''"
    write_cram: "Writes a CRAM file as output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_write_cram = "${in_write_cram}"
  }
}