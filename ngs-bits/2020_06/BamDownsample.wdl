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
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input BAM file."
    percentage: "Percentage of reads to keep."
    out: "Output BAM file."
    test: "Test mode: fix random number generator seed and write kept read names to STDOUT.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}