version 1.0

task NewUCSCdbpl {
  input {
    Boolean? db
    Boolean? fa
    Boolean? tax
    Boolean? genome
    Boolean? sname
    String? assembly
    Boolean? pos
    Boolean? key
    Boolean? source
    Boolean? clade
  }
  command <<<
    newUCSCdb_pl \
      ~{if (db) then "-db" else ""} \
      ~{if (fa) then "-fa" else ""} \
      ~{if (tax) then "-tax" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (sname) then "-sname" else ""} \
      ~{if defined(assembly) then ("-assembly " +  '"' + assembly + '"') else ""} \
      ~{if (pos) then "-pos" else ""} \
      ~{if (key) then "-key" else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if (clade) then "-clade" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "<string>  new database name                        ()"
    fa: "<string>  (multi) fasta file holding sequence      ()"
    tax: "<string>  taxonomy ID                              ()"
    genome: "<string>  genome name                              ()"
    sname: "<string>  scientific name                          ()"
    assembly: "assembly                                 ()"
    pos: "<string>  default position                         ()"
    key: "<int>     order key                                ()"
    source: "<string>  genome/assembly/annotation source        ()"
    clade: "<string>  genome clade (mammal,plants,bateria,...) ()"
  }
  output {
    File out_stdout = stdout()
  }
}