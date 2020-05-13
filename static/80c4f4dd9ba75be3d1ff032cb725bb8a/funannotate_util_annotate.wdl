version 1.0

task FunannotateUtilAnnotate {
  input {
    Boolean gffGff
    Boolean fastFastA
    Boolean speciesSpecies
    Boolean outOut
    Boolean sbtSbt
    Boolean annotationsAnnotations
    Boolean eggnogEggnog
    Boolean antiAntiSmash
    Boolean iprsIprsCan
    Boolean phPhObius
    Boolean isolateIsolate
    Boolean strainStrain
    Boolean renameRename
    Boolean fixFix
    Boolean removeRemove
    Boolean buscoBuscoDb
    Boolean tbl2asnTbl2asn
    Boolean databaseDatabase
    Boolean forceForce
    Boolean cpusCpus
    String? annotateAnnotate
    String? argumentsArguments
  }
  command <<<
    funannotate util annotate \
      ~{annotateAnnotate} \
      ~{true="--gff" false="" gffGff} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--out" false="" outOut} \
      ~{true="--sbt" false="" sbtSbt} \
      ~{true="--annotations" false="" annotationsAnnotations} \
      ~{true="--eggnog" false="" eggnogEggnog} \
      ~{true="--antismash" false="" antiAntiSmash} \
      ~{true="--iprscan" false="" iprsIprsCan} \
      ~{true="--phobius" false="" phPhObius} \
      ~{true="--isolate" false="" isolateIsolate} \
      ~{true="--strain" false="" strainStrain} \
      ~{true="--rename" false="" renameRename} \
      ~{true="--fix" false="" fixFix} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--tbl2asn" false="" tbl2asnTbl2asn} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--force" false="" forceForce} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{argumentsArguments}
  >>>
}