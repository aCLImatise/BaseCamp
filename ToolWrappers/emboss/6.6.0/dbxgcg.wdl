version 1.0

task Dbxgcg {
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
    File indexoutdir_outdir_index
  }
  command <<<
    dbxgcg \
      ~{indexoutdir_outdir_index} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_format: "menu       [SWISS] Entry format (Values: EMBL (EMBL);\\nSWISS (Swiss-Prot, SpTrEMBL, TrEMBLnew);\\nGENBANK (Genbank, DDBJ); PIR (NBRF))"
    directory: "directory  [.] Database directory"
    filenames: "string     [*.seq] Wildcard database filename (Any\\nstring)"
    fields: "menu       [id,acc] Index fields (Values: id (ID); acc\\n(Accession number); sv (Sequence Version and\\nGI); des (Description); key (Keywords); org\\n(Taxonomy))"
    outfile: "outfile    [*.dbxgcg] General log output file"
    release: "string     [0.0] Release number (Any string up to 9\\ncharacters)"
    date: "string     [00/00/00] Index date (Date string dd/mm/yy)"
    exclude: "string     Wildcard filename(s) to exclude (Any string)"
    statistics: "boolean    [N] Report I/O statistics for each input"
    indexoutdir_outdir_index: "-indexoutdir        outdir     [.] Index file output directory"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}