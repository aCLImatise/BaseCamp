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
    File? name
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateFromBed \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if (clear) then "-clear" else ""} \
      ~{if (no_duplicates) then "-no_duplicates" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (url_decode) then "-url_decode" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in_two: "BED file that is used as annotation source."
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    col: "Annotation source column (if column number does not exist, 'yes' is used).\\nDefault value: '4'"
    clear: "Clear all annotations present in the 'in' file.\\nDefault value: 'false'"
    no_duplicates: "Remove duplicate annotations if several intervals from 'in2' overlap.\\nDefault value: 'false'"
    overlap: "Annotate overlap with regions in 'in2'. The regular annotation is appended in brackets.\\nDefault value: 'false'"
    url_decode: "Decode URL encoded characters\\nDefault value: 'false'"
    name: "Use this name as column header of TSV files output files. If unset, the base file name if 'in2' is used.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_name = "${in_name}"
  }
}