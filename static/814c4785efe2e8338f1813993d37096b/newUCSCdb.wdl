version 1.0

task NewUCSCdb.pl {
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
    newUCSCdb.pl \
      ~{true="-db" false="" db} \
      ~{true="-fa" false="" fa} \
      ~{true="-tax" false="" tax} \
      ~{true="-genome" false="" genome} \
      ~{true="-sname" false="" sname} \
      ~{if defined(assembly) then ("-assembly " +  '"' + assembly + '"') else ""} \
      ~{true="-pos" false="" pos} \
      ~{true="-key" false="" key} \
      ~{true="-source" false="" source} \
      ~{true="-clade" false="" clade}
  >>>
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
}