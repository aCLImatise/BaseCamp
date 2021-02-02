version 1.0

task Dbxfasta {
  input {
    Boolean? id_format
    Boolean? directory
    Boolean? filenames
    Boolean? fields
    File? outfile
    Boolean? release
    Boolean? date
    Boolean? exclude
    Boolean? statistics
    File file
  }
  command <<<
    _dbxfasta \
      ~{file} \
      ~{if (id_format) then "-idformat" else ""} \
      ~{if (directory) then "-directory" else ""} \
      ~{if (filenames) then "-filenames" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (date) then "-date" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (statistics) then "-statistics" else ""}
  >>>
  parameter_meta {
    id_format: "menu       [idacc] ID line format (Values: simple\\n(>ID); idacc (>ID ACC or >ID (ACC)); idsv\\n(>ID SV or >ID (SV)); gcgid (>db:ID);\\ngcgidacc (>db:ID ACC); dbid (>db ID); ncbi\\n(| formats))"
    directory: "directory  [.] Database directory"
    filenames: "string     [*.fasta] Wildcard database filename (Any\\nstring)"
    fields: "menu       [id,acc] Index fields (Values: id (ID); acc\\n(Accession number); sv (Sequence Version and\\nGI); des (Description))"
    outfile: "outfile    [*.dbxfasta] General log output file"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    exclude: "string     Wildcard filename(s) to exclude (Any string)"
    statistics: "boolean    [N] Report I/O statistics for each input"
    file: "-indexoutdir        outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}