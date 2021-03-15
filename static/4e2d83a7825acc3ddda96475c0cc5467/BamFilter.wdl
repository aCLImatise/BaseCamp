version 1.0

task BamFilter {
  input {
    File? in
    File? out
    Int? min_mq
    Int? max_mm
    Int? max_gap
    Int? mind_up
    File? ref
    File? write_cram
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_mq) then ("-minMQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(max_mm) then ("-maxMM " +  '"' + max_mm + '"') else ""} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(mind_up) then ("-minDup " +  '"' + mind_up + '"') else ""} \
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
    out: "Output BAM/CRAM file."
    min_mq: "Minimum mapping quality.\\nDefault value: '30'"
    max_mm: "Maximum number of mismatches in aligned read, -1 to disable.\\nDefault value: '4'"
    max_gap: "Maximum number of gaps (indels) in aligned read, -1 to disable.\\nDefault value: '1'"
    mind_up: "Minimum number of duplicates.\\nDefault value: '0'"
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