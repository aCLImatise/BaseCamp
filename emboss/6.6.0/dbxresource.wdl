version 1.0

task Dbxresource {
  input {
    Boolean? directory
    Boolean? filenames
    Boolean? fields
    File? outfile
    Boolean? release
    Boolean? date
    Boolean? exclude
    File? index_outdir
  }
  command <<<
    dbxresource \
      ~{if (directory) then "-directory" else ""} \
      ~{if (filenames) then "-filenames" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (date) then "-date" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (index_outdir) then "-indexoutdir" else ""}
  >>>
  parameter_meta {
    directory: "directory  [.] Database directory"
    filenames: "string     [DRCAT.dat] Wildcard database filename (Any\\nstring)"
    fields: "menu       [*] Index fields (Values: id (ID); acc\\n(IDother); nam (Name); des (Description);\\nurl (Server URL); cat (Category name); taxid\\n(Taxon id); edat (EDAM data term); efmt\\n(EDAM format term); eid (EDAM data id term);\\netpc (EDAM topic term); xref (Link); qout\\n(Query output); qfmt (Query output format);\\nqin (Query input parameters); qurl (Query\\nURL); rest (Rest URL); soap (SOAP URL))"
    outfile: "outfile    [*.dbxresource] General log output file"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    exclude: "string     Wildcard filename(s) to exclude (Any string)"
    index_outdir: "outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_index_outdir = "${in_index_outdir}"
  }
}