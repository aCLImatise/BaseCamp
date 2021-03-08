version 1.0

task BcbioSetupGenomepy {
  input {
    String? _name_build
    Int? cores
    Boolean? gff_three
    Boolean? space_separated_list
    Boolean? er_cc
    String? mir_base
    String? srna_gtf
    String? build_version
    File? fast_a
    File? gtf
    String? name
    Int? build
  }
  command <<<
    bcbio_setup_genome_py \
      ~{if defined(_name_build) then ("-f " +  '"' + _name_build + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (gff_three) then "--gff3" else ""} \
      ~{if (space_separated_list) then "-i" else ""} \
      ~{if (er_cc) then "--ercc" else ""} \
      ~{if defined(mir_base) then ("--mirbase " +  '"' + mir_base + '"') else ""} \
      ~{if defined(srna_gtf) then ("--srna_gtf " +  '"' + srna_gtf + '"') else ""} \
      ~{if defined(build_version) then ("--buildversion " +  '"' + build_version + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.7--pyh3252c3a_0"
  }
  parameter_meta {
    _name_build: "[-g GTF] -n NAME -b BUILD"
    cores: "number of cores to use"
    gff_three: "File is a GFF3 file."
    space_separated_list: "[{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} ...]], --indexes [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq} ...]]\\nSpace separated list of indexes to make"
    er_cc: "Add ERCC spike-ins."
    mir_base: "species in mirbase for smallRNAseq data."
    srna_gtf: "gtf to use for smallRNAseq data."
    build_version: "String describing build of genome used. Examples:\\nEnsembl_94, EnsemblMetazoa_94, Flybase_21, etc"
    fast_a: "FASTA file of the genome."
    gtf: "GTF file of the transcriptome"
    name: "Name of organism, for example Hsapiens."
    build: "Build of genome, for example hg19.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}