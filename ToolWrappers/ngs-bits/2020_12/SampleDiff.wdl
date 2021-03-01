version 1.0

task SampleDiff {
  input {
    File? in_one
    File? in_two
    File? out
    Int? window
    Boolean? nei
    Boolean? sm
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SampleDiff \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(window) then ("-window " +  '"' + window + '"') else ""} \
      ~{if (nei) then "-nei" else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in_one: "Input variant list in GSvar format."
    in_two: "Input variant list in GSvar format."
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    window: "Window to consider around indel positions to compensate for differing alignments.\\nDefault value: '100'"
    nei: "Allow non-exact indel matches. If set, all indels in the window are considered matches.\\nDefault value: 'false'"
    sm: "Also show matches. If unset, matching variants are not printed.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}