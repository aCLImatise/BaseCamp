version 1.0

task BuildCustomModelspl {
  input {
    Directory? _datadir_s
    Boolean? db
    Boolean? _proteome_proteome
    Boolean? _testmode_generate
    Boolean? _verbose_turn
  }
  command <<<
    buildCustomModels_pl \
      ~{if (_datadir_s) then "-d" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (_proteome_proteome) then "-p" else ""} \
      ~{if (_testmode_generate) then "-t" else ""} \
      ~{if (_verbose_turn) then "-v" else ""}
  >>>
  parameter_meta {
    _datadir_s: "/ --datadir  <s>    :       Data directory for writing output to"
    db: "/ --database <s>    :       Database file default:[datadir/uniref90.fasta]"
    _proteome_proteome: "/ --proteome <s>    :       A proteome file in fasta format"
    _testmode_generate: "/ --testmode        :       Generate small database and proteome files for testing"
    _verbose_turn: "/ --verbose         :       Turn on verbose messaging"
  }
  output {
    File out_stdout = stdout()
    Directory out__datadir_s = "${in__datadir_s}"
  }
}