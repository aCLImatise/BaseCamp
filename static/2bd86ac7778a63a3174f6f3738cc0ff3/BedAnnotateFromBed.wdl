version 1.0

task BedAnnotateFromBed {
  input {
    File? in_two
    File? in
    File? out
    Int? col
    Boolean? clear
    Boolean? no_duplicates
    Boolean? overlap
    Boolean? url_decode
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateFromBed \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{true="-clear" false="" clear} \
      ~{true="-no_duplicates" false="" no_duplicates} \
      ~{true="-overlap" false="" overlap} \
      ~{true="-url_decode" false="" url_decode} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in_two: "BED file that is used as annotation source."
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    col: "Annotation source column (if column number does not exist, 'yes' is used). Default value: '4'"
    clear: "Clear all annotations present in the 'in' file. Default value: 'false'"
    no_duplicates: "Remove duplicate annotations if several intervals from 'in2' overlap. Default value: 'false'"
    overlap: "Annotate overlap with regions in 'in2'. The regular annotation is appended in brackets. Default value: 'false'"
    url_decode: "Decode URL encoded characters Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}