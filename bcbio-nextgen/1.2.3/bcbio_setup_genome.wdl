version 1.0

task BcbioSetupGenome.py {
  input {
    String? cores
    String? fast_a
    Boolean? gff_three
    String? gtf
    String? name
    String? build
    Boolean? space_separated_list
    Boolean? er_cc
    String? mir_base
    String? srna_gtf
    String? build_version
  }
  command <<<
    bcbio_setup_genome.py \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--gff3" false="" gff_three} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{true="-i" false="" space_separated_list} \
      ~{true="--ercc" false="" er_cc} \
      ~{if defined(mir_base) then ("--mirbase " +  '"' + mir_base + '"') else ""} \
      ~{if defined(srna_gtf) then ("--srna_gtf " +  '"' + srna_gtf + '"') else ""} \
      ~{if defined(build_version) then ("--buildversion " +  '"' + build_version + '"') else ""}
  >>>
  parameter_meta {
    cores: "number of cores to use"
    fast_a: "FASTA file of the genome."
    gff_three: "File is a GFF3 file."
    gtf: "GTF file of the transcriptome"
    name: "Name of organism, for example Hsapiens."
    build: "Build of genome, for example hg19."
    space_separated_list: "[{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} ...]], --indexes [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} ...]] Space separated list of indexes to make"
    er_cc: "Add ERCC spike-ins."
    mir_base: "species in mirbase for smallRNAseq data."
    srna_gtf: "gtf to use for smallRNAseq data."
    build_version: "String describing build of genome used. Examples: Ensembl_94, EnsemblMetazoa_94, Flybase_21, etc"
  }
}