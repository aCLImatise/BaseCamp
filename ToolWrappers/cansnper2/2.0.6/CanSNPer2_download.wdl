version 1.0

task CanSNPer2download {
  input {
    Boolean? db
    Boolean? _source_source
    Boolean? _outdir_reference
    Boolean? logs
    Boolean? verbose
  }
  command <<<
    CanSNPer2_download \
      ~{if (db) then "-db" else ""} \
      ~{if (_source_source) then "-s" else ""} \
      ~{if (_outdir_reference) then "-o" else ""} \
      ~{if (logs) then "--logs" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    db: ", --database   CanSNP database"
    _source_source: ", --source      Source for download (genbank/refseq)"
    _outdir_reference: ", --outdir      reference genomes folder"
    logs: "Specify log directory"
    verbose: "Verbose logging"
  }
  output {
    File out_stdout = stdout()
  }
}