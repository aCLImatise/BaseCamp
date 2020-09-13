version 1.0

task Dbiblast {
  input {
    Boolean? directory
    Boolean? filenames
    Boolean? release
    Boolean? date
    Boolean? seqtype
    Boolean? blast_version
    File? outfile
    Boolean? fields
    Boolean? exclude
    Boolean? sort_options
    Boolean? max_index
    Boolean? source_file
    File? index_outdir
  }
  command <<<
    dbiblast \
      ~{if (directory) then "-directory" else ""} \
      ~{if (filenames) then "-filenames" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (date) then "-date" else ""} \
      ~{if (seqtype) then "-seqtype" else ""} \
      ~{if (blast_version) then "-blastversion" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (sort_options) then "-sortoptions" else ""} \
      ~{if (max_index) then "-maxindex" else ""} \
      ~{if (source_file) then "-sourcefile" else ""} \
      ~{if (index_outdir) then "-indexoutdir" else ""}
  >>>
  parameter_meta {
    directory: "directory  [.] Database directory"
    filenames: "string     [Database name] Wildcard database filename\\n(Any string)"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    seqtype: "menu       [unknown] Sequence type (Values: N\\n(nucleic); P (protein); ? (unknown))"
    blast_version: "menu       [unknown] Blast index version (Values: 1\\n(wublast and setdb/pressdb); 2 (formatdb); 0\\n(unknown))"
    outfile: "outfile    [*.dbiblast] General log output file"
    fields: "menu       [acc] Index fields (Values: acc (acnum\\naccession number index); sv (seqvn sequence\\nversion and gi number index); des (des\\ndescription index))"
    exclude: "string     Wildcard filename(s) to exclude (Any string)"
    sort_options: "string     [-T . -k 1,1] Sort options, typically '-T .'\\nto use current directory for work files and\\n'-k 1,1' to force GNU sort to use the first\\nfield (Any string)"
    max_index: "integer    [0] Maximum index length (Integer 0 or more)"
    source_file: "boolean    Use FASTA source file"
    index_outdir: "outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_index_outdir = "${in_index_outdir}"
  }
}