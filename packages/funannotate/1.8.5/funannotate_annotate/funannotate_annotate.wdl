version 1.0

task FunannotateAnnotate {
  input {
    Boolean? folder_funannotate_predict
    Directory? out
    Boolean? fast_a
    Boolean? species
    Boolean? sbt
    Boolean? annotations
    Boolean? eggnog
    File? anti_smash
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
    Directory? force
    Boolean? cpus
    Boolean? no_progress
    String arguments
  }
  command <<<
    funannotate annotate \
      ~{arguments} \
      ~{if (folder_funannotate_predict) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (sbt) then "--sbt" else ""} \
      ~{if (annotations) then "--annotations" else ""} \
      ~{if (eggnog) then "--eggnog" else ""} \
      ~{if (anti_smash) then "--antismash" else ""} \
      ~{if (iprs_can) then "--iprscan" else ""} \
      ~{if (ph_obius) then "--phobius" else ""} \
      ~{if (isolate) then "--isolate" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (fix) then "--fix" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if (busco_db) then "--busco_db" else ""} \
      ~{if (tbl_two_asn) then "--tbl2asn" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (no_progress) then "--no-progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
  parameter_meta {
    folder_funannotate_predict: "Folder from funannotate predict"
    out: "Output folder for results"
    fast_a: "Genome in multi-fasta format"
    species: "Species name, use quotes for binomial, e.g. \\\"Aspergillus fumigatus\\\""
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
    tbl_two_asn: "Additional parameters for tbl2asn. Default: \\\"-l paired-ends\\\""
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    force: "Force over-write of output folder"
    cpus: "Number of CPUs to use. Default: 2"
    no_progress: "Do not print progress to stdout for long sub jobs"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
    File out_anti_smash = "${in_anti_smash}"
    Directory out_force = "${in_force}"
  }
}