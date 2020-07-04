version 1.0

task FunannotateUpdate {
  input {
    Boolean? fast_a
    Boolean? gff
    Boolean? species
    Boolean? aligners
    Boolean? max_intron_len
    Boolean? min_prot_len
    Boolean? alt_transcripts
    Boolean? p_two_g
    Boolean? tbl_two_asn
    Boolean? name
    Boolean? sbt
    Boolean? strain
    Boolean? isolate
    Boolean? seq_center
    Boolean? seq_accession
    Boolean? cpus
    String arguments
  }
  command <<<
    funannotate update \
      ~{arguments} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--gff" false="" gff} \
      ~{true="--species" false="" species} \
      ~{true="--aligners" false="" aligners} \
      ~{true="--max_intronlen" false="" max_intron_len} \
      ~{true="--min_protlen" false="" min_prot_len} \
      ~{true="--alt_transcripts" false="" alt_transcripts} \
      ~{true="--p2g" false="" p_two_g} \
      ~{true="--tbl2asn" false="" tbl_two_asn} \
      ~{true="--name" false="" name} \
      ~{true="--sbt" false="" sbt} \
      ~{true="--strain" false="" strain} \
      ~{true="--isolate" false="" isolate} \
      ~{true="--SeqCenter" false="" seq_center} \
      ~{true="--SeqAccession" false="" seq_accession} \
      ~{true="--cpus" false="" cpus}
  >>>
  parameter_meta {
    fast_a: "Genome in FASTA format"
    gff: "Annotation in GFF3 format"
    species: "Species name, use quotes for binomial, e.g. \"Aspergillus fumigatus\""
    aligners: "Aligners to use with PASA: Default: minimap2 blat [gmap]"
    max_intron_len: "Maximum intron length. Default: 3000"
    min_prot_len: "Minimum protein length. Default: 50"
    alt_transcripts: "Expression threshold (percent) to keep alt transcripts. Default: 0.1 [0-1]"
    p_two_g: "NCBI p2g file (if updating NCBI annotation)"
    tbl_two_asn: "Assembly parameters for tbl2asn. Example: \"-l paired-ends\"           "
    name: "Locus tag name (assigned by NCBI?). Default: use existing  "
    sbt: "NCBI Submission file        "
    strain: "Strain name"
    isolate: "Isolate name"
    seq_center: "Sequencing facilty for NCBI tbl file. Default: CFMR"
    seq_accession: "Sequence accession number for NCBI tbl file. Default: 12345"
    cpus: "Number of CPUs to use. Default: 2"
    arguments: ""
  }
}