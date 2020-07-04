version 1.0

task CanSNPer2Download {
  input {
    Boolean? db
    Boolean? _source_source
    Boolean? _outdir_reference
    Boolean? logs
    Boolean? verbose
  }
  command <<<
    CanSNPer2-download \
      ~{true="-db" false="" db} \
      ~{true="-s" false="" _source_source} \
      ~{true="-o" false="" _outdir_reference} \
      ~{true="--logs" false="" logs} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    db: ", --database   CanSNP database"
    _source_source: ", --source      Source for download (genbank/refseq)"
    _outdir_reference: ", --outdir      reference genomes folder"
    logs: "Specify log directory"
    verbose: "Verbose logging"
  }
}