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
      ~{true="-nei" false="" nei} \
      ~{true="-sm" false="" sm} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in_one: "Input variant list in GSvar format."
    in_two: "Input variant list in GSvar format."
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    window: "Window to consider around indel positions to compensate for differing alignments. Default value: '100'"
    nei: "Allow non-exact indel matches. If set, all indels in the window are considered matches. Default value: 'false'"
    sm: "Also show matches. If unset, matching variants are not printed. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}