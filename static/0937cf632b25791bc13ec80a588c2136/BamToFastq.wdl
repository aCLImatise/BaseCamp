version 1.0

task BamToFastq {
  input {
    File? in
    File? out_one
    File? out_two
    Boolean? remove_duplicates
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamToFastq \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{true="-remove_duplicates" false="" remove_duplicates} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BAM file."
    out_one: "Read 1 output FASTQ.GZ file."
    out_two: "Read 2 output FASTQ.GZ file."
    remove_duplicates: "Does not export duplicate reads into the FASTQ file. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}