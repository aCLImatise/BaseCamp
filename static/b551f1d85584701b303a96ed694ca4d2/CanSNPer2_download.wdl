version 1.0

task CanSNPer2download {
  input {
    Boolean? database
    Boolean? source
    Boolean? outdir
    Boolean? logs
    Boolean? verbose
  }
  command <<<
    CanSNPer2_download \
      ~{if (database) then "--database" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (logs) then "--logs" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: "CanSNP database"
    source: "Source for download (genbank/refseq)"
    outdir: "reference genomes folder"
    logs: "Specify log directory"
    verbose: "Verbose logging"
  }
  output {
    File out_stdout = stdout()
  }
}