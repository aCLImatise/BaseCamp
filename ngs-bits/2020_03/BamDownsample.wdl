version 1.0

task BamDownsample {
  input {
    File? in
    Int? percentage
    File? out
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamDownsample \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(percentage) then ("-percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BAM file."
    percentage: "Percentage of reads to keep."
    out: "Output BAM file."
    test: "Test mode: fix random number generator seed and write kept read names to STDOUT. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}