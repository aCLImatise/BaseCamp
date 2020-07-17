version 1.0

task FunannotateAnnotate {
  input {
    Boolean? gff
    Boolean? fast_a
    Boolean? species
    Boolean? out
    Boolean? sbt
    Boolean? annotations
    Boolean? eggnog
    Boolean? anti_smash
    Boolean? iprs_can
    Boolean? ph_obius
    Boolean? isolate
    Boolean? strain
    Boolean? rename
    Boolean? fix
    Boolean? remove
    Boolean? busco_db
    Boolean? tbl_two_asn
    Boolean? database
    Boolean? force
    Boolean? cpus
    String arguments
  }
  command <<<
    funannotate annotate \
      ~{arguments} \
      ~{true="--gff" false="" gff} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--species" false="" species} \
      ~{true="--out" false="" out} \
      ~{true="--sbt" false="" sbt} \
      ~{true="--annotations" false="" annotations} \
      ~{true="--eggnog" false="" eggnog} \
      ~{true="--antismash" false="" anti_smash} \
      ~{true="--iprscan" false="" iprs_can} \
      ~{true="--phobius" false="" ph_obius} \
      ~{true="--isolate" false="" isolate} \
      ~{true="--strain" false="" strain} \
      ~{true="--rename" false="" rename} \
      ~{true="--fix" false="" fix} \
      ~{true="--remove" false="" remove} \
      ~{true="--busco_db" false="" busco_db} \
      ~{true="--tbl2asn" false="" tbl_two_asn} \
      ~{true="--database" false="" database} \
      ~{true="--force" false="" force} \
      ~{true="--cpus" false="" cpus}
  >>>
  parameter_meta {
    gff: "Genome GFF3 annotation file"
    fast_a: "Genome in multi-fasta format"
    species: "Species name, use quotes for binomial, e.g. \"Aspergillus fumigatus\""
    out: "Output folder for results"
    sbt: "NCBI submission template file. (Recommended)"
    annotations: "Custom annotations (3 column tsv file)"
    eggnog: "Eggnog-mapper annotations file (if NOT installed)"
    anti_smash: "antiSMASH secondary metabolism results (GBK file from output)"
    iprs_can: "InterProScan5 XML file"
    ph_obius: "Phobius pre-computed results (if phobius NOT installed)"
    isolate: "Isolate name"
    strain: "Strain name"
    rename: "Rename GFF gene models with locus_tag from NCBI."
    fix: "Gene/Product names fixed (TSV: GeneID      Name    Product)"
    remove: "Gene/Product names to remove (TSV: Gene    Product)"
    busco_db: "BUSCO models. Default: dikarya"
    tbl_two_asn: "Additional parameters for tbl2asn. Default: \"-l paired-ends\""
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    force: "Force over-write of output folder"
    cpus: "Number of CPUs to use. Default: 2"
    arguments: ""
  }
}