version 1.0

task Dbifasta {
  input {
    Boolean? id_format
    Boolean? directory
    Boolean? filenames
    Boolean? release
    Boolean? date
    File? outfile
    Boolean? fields
    Boolean? exclude
    Boolean? max_index
    Boolean? sort_options
    File? index_outdir
  }
  command <<<
    _dbifasta \
      ~{if (id_format) then "-idformat" else ""} \
      ~{if (directory) then "-directory" else ""} \
      ~{if (filenames) then "-filenames" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (date) then "-date" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (max_index) then "-maxindex" else ""} \
      ~{if (sort_options) then "-sortoptions" else ""} \
      ~{if (index_outdir) then "-indexoutdir" else ""}
  >>>
  parameter_meta {
    id_format: "menu       [idacc] ID line format (Values: simple\\n(>ID); idacc (>ID ACC or >ID (ACC)); gcgid\\n(>db:ID); gcgidacc (>db:ID ACC); dbid (>db\\nID); ncbi (| formats))"
    directory: "directory  [.] Database directory"
    filenames: "string     [*.dat] Wildcard database filename (Any\\nstring)"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    outfile: "outfile    [*.dbifasta] General log output file"
    fields: "menu       [acc] Index fields (Values: acc (acnum\\naccession number index); sv (seqvn sequence\\nversion and gi number index); des (des\\ndescription index))"
    exclude: "string     Wildcard filename(s) to exclude (Any string)"
    max_index: "integer    [0] Maximum index length (Integer 0 or more)"
    sort_options: "string     [-T . -k 1,1] Sort options, typically '-T .'\\nto use current directory for work files and\\n'-k 1,1' to force GNU sort to use the first\\nfield (Any string)"
    index_outdir: "outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_index_outdir = "${in_index_outdir}"
  }
}