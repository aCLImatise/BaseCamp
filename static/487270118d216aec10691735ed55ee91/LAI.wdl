version 1.0

task LAI {
  input {
    Boolean genomeGenome
    Boolean intactIntact
    Boolean allAll
    Boolean windowWindow
    Boolean stepStep
    Boolean qQ
    Boolean qqQq
    Boolean monoMono
    Boolean idenIden
    Boolean toToTltr
    Boolean blastBlast
    Boolean tT
  }
  command <<<
    LAI \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-intact" false="" intactIntact} \
      ~{true="-all" false="" allAll} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-step" false="" stepStep} \
      ~{true="-q" false="" qQ} \
      ~{true="-qq" false="" qqQq} \
      ~{true="-mono" false="" monoMono} \
      ~{true="-iden" false="" idenIden} \
      ~{true="-totLTR" false="" toToTltr} \
      ~{true="-blast" false="" blastBlast} \
      ~{true="-t" false="" tT}
  >>>
}