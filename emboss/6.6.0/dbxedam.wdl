version 1.0

task Dbxedam {
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
    dbxedam \
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
    filenames: "string     [EDAM*.obo] Wildcard database filename (Any\\nstring)"
    fields: "menu       [*] Index fields (Values: id (ID); acc\\n(Synonym); nam (Name); isa (Parent); des\\n(Description); ns (Namespace); hasin\\n(has_input); hasout (has_output); isid\\n(is_identifier_of); isfmt (is_format_of))"
    outfile: "outfile    [*.dbxedam] General log output file"
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