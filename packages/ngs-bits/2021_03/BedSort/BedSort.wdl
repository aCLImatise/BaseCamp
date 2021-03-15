version 1.0

task BedSort {
  input {
    File? in
    File? out
    Boolean? with_name
    Boolean? uniq
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedSort \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (with_name) then "-with_name" else ""} \
      ~{if (uniq) then "-uniq" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    with_name: "Uses name column (i.e. the 4th column) to sort if chr/start/end are equal.\\nDefault value: 'false'"
    uniq: "If set, entries with the same chr/start/end are removed after sorting.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}