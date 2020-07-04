version 1.0

task BamFilter {
  input {
    File? in
    File? out
    Int? min_mq
    Int? max_mm
    Int? max_gap
    Int? mind_up
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
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BAM file."
    out: "Output BAM file."
    min_mq: "Minimum mapping quality. Default value: '30'"
    max_mm: "Maximum number of mismatches in aligned read, -1 to disable. Default value: '4'"
    max_gap: "Maximum number of gaps (indels) in aligned read, -1 to disable. Default value: '1'"
    mind_up: "Minimum number of duplicates. Default value: '0'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}