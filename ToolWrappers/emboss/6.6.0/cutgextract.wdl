version 1.0

task Cutgextract {
  input {
    Boolean? release
    Boolean? wild_spec
    Boolean? species
    Boolean? all_records
    File? filename
  }
  command <<<
    cutgextract \
      ~{if (release) then "-release" else ""} \
      ~{if (wild_spec) then "-wildspec" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (all_records) then "-allrecords" else ""} \
      ~{if (filename) then "-filename" else ""}
  >>>
  parameter_meta {
    release: "string     CUTG release (Any string)"
    wild_spec: "string     [*.codon] Type of codon file (Any string)"
    species: "string     [*] Species wildcard (Any string)"
    all_records: "boolean    [N] Include all records, including those\\nwith warnings"
    filename: "string     Single output filename to override automatic\\none file for each species. Leave blank to\\ngenerate the filenames. Specify a filename\\nto combine several species into one file.\\n(Any string)"
  }
  output {
    File out_stdout = stdout()
    File out_filename = "${in_filename}"
  }
}