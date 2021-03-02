version 1.0

task BuildCustomModelspl {
  input {
    Directory? datadir
    File? database
    File? proteome
    Boolean? test_mode
    Boolean? verbose
  }
  command <<<
    buildCustomModels_pl \
      ~{if (datadir) then "--datadir" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(proteome) then ("--proteome " +  '"' + proteome + '"') else ""} \
      ~{if (test_mode) then "--testmode" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    datadir: "<s>    :       Data directory for writing output to"
    database: ":       Database file default:[datadir/uniref90.fasta]"
    proteome: ":       A proteome file in fasta format"
    test_mode: ":       Generate small database and proteome files for testing"
    verbose: ":       Turn on verbose messaging"
  }
  output {
    File out_stdout = stdout()
    Directory out_datadir = "${in_datadir}"
  }
}