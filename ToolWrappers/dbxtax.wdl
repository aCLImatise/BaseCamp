version 1.0

task Dbxtax {
  input {
    Boolean? directory
    Boolean? fields
    File? outfile
    Boolean? release
    Boolean? date
    File? index_outdir
  }
  command <<<
    dbxtax \
      ~{if (directory) then "-directory" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (date) then "-date" else ""} \
      ~{if (index_outdir) then "-indexoutdir" else ""}
  >>>
  parameter_meta {
    directory: "directory  [.] Database directory"
    fields: "menu       [*] Index fields (Values: id (ID); acc\\n(Synonym); tax (Scientific name); rnk\\n(Rank); up (Parent); gc (Genetics code); mgc\\n(Mitochondrial genetic code))"
    outfile: "outfile    [*.dbxtax] General log output file"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    index_outdir: "outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_index_outdir = "${in_index_outdir}"
  }
}