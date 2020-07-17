version 1.0

task Getinfo.py {
  input {
    File? outfile
    String? output_format_nname
    String? allow_only_entries
    String? forbid_entries_tax
    String gb_files
  }
  command <<<
    getinfo.py \
      ~{gb_files} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(output_format_nname) then ("-f " +  '"' + output_format_nname + '"') else ""} \
      ~{if defined(allow_only_entries) then ("-t " +  '"' + allow_only_entries + '"') else ""} \
      ~{if defined(forbid_entries_tax) then ("-T " +  '"' + forbid_entries_tax + '"') else ""}
  >>>
  parameter_meta {
    outfile: "write values to FILE (default: stdout)"
    output_format_nname: "output format: %n=name, %a=accession, %taxid=taxid, %strain=strain, %c=code table, %seq=sequence, %s=size, %t=taxonomy string, %r=references, %pmid=pubmed ids"
    allow_only_entries: "allow only entries with TAX in the taxonomy"
    forbid_entries_tax: "forbid all entries with TAX in the taxonomy"
    gb_files: ""
  }
}