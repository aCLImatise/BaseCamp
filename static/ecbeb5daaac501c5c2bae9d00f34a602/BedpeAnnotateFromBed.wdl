version 1.0

task BedpeAnnotateFromBed {
  input {
    File? bed
    File? in
    File? out
    Int? col
    String? col_name
    Boolean? no_duplicates
    Boolean? url_decode
    Boolean? replace_underscore
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedpeAnnotateFromBed \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if defined(col_name) then ("-col_name " +  '"' + col_name + '"') else ""} \
      ~{true="-no_duplicates" false="" no_duplicates} \
      ~{true="-url_decode" false="" url_decode} \
      ~{true="-replace_underscore" false="" replace_underscore} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    bed: "BED file that is used as annotation source."
    in: "Input BEDPE file. If unset, reads from STDIN. Default value: ''"
    out: "Output BEDPE file. If unset, writes to STDOUT. Default value: ''"
    col: "Annotation source column (default: 4). Default value: '4'"
    col_name: "Name of the annotated column Default value: 'ANNOTATION'"
    no_duplicates: "Remove duplicate annotations if several intervals from 'in2' overlap. Default value: 'false'"
    url_decode: "Decode URL encoded characters. Default value: 'false'"
    replace_underscore: "Replaces underscores with spaces in the annotation column. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}