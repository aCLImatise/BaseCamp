version 1.0

task BcbioSetupGenome.py {
  input {
    String coresCores
    String fastFastA
    Boolean gff3Gff3
    String gtfGtf
    String nameName
    String buildBuild
    Boolean iI
    Boolean erErCc
    String mirMirBase
    String srnaSrnaGtf
    String buildBuildVersion
  }
  command <<<
    bcbio_setup_genome.py \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--gff3" false="" gff3Gff3} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="--ercc" false="" erErCc} \
      ~{if defined(mirMirBase) then ("--mirbase " +  '"' + mirMirBase + '"') else ""} \
      ~{if defined(srnaSrnaGtf) then ("--srna_gtf " +  '"' + srnaSrnaGtf + '"') else ""} \
      ~{if defined(buildBuildVersion) then ("--buildversion " +  '"' + buildBuildVersion + '"') else ""}
  >>>
}