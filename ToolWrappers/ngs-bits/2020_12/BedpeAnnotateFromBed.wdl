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
      ~{if (no_duplicates) then "-no_duplicates" else ""} \
      ~{if (url_decode) then "-url_decode" else ""} \
      ~{if (replace_underscore) then "-replace_underscore" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    bed: "BED file that is used as annotation source."
    in: "Input BEDPE file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BEDPE file. If unset, writes to STDOUT.\\nDefault value: ''"
    col: "Annotation source column (default: 4).\\nDefault value: '4'"
    col_name: "Name of the annotated column\\nDefault value: 'ANNOTATION'"
    no_duplicates: "Remove duplicate annotations if several intervals from 'in2' overlap.\\nDefault value: 'false'"
    url_decode: "Decode URL encoded characters.\\nDefault value: 'false'"
    replace_underscore: "Replaces underscores with spaces in the annotation column.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}