version 1.0

task FastqMidParser {
  input {
    File? in
    File? out
    Int? lines
    Int? mids
    File? sheet
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqMidParser \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(lines) then ("-lines " +  '"' + lines + '"') else ""} \
      ~{if defined(mids) then ("-mids " +  '"' + mids + '"') else ""} \
      ~{if defined(sheet) then ("-sheet " +  '"' + sheet + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input gzipped FASTQ file."
    out: "Output TXT file. If unset, writes to STDOUT. Default value: ''"
    lines: "The number of FASTQ entries in the input file to parse. 0 is unlimited. Default value: '1000'"
    mids: "The number of top-ranking MIDs to print. 0 is unlimited. Default value: '20'"
    sheet: "Optional sample sheet CSV file as provided to CASAVA. If given, the closest match in the sample sheet is printed after each MID. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}