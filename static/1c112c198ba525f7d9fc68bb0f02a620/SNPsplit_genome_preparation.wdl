version 1.0

task SNPsplitGenomePreparation {
  input {
    File? vcf_file
    String? strain
    Boolean? list_strains
    Boolean? dual_hybrid
    Int? strain_two
    Boolean? reference_genome
    Boolean? skip_filtering
    Directory? n_masking
    Directory? full_sequence
    Boolean? no_n_masking
    Boolean? genome_build
  }
  command <<<
    SNPsplit_genome_preparation \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if (list_strains) then "--list_strains" else ""} \
      ~{if (dual_hybrid) then "--dual_hybrid" else ""} \
      ~{if defined(strain_two) then ("--strain2 " +  '"' + strain_two + '"') else ""} \
      ~{if (reference_genome) then "--reference_genome" else ""} \
      ~{if (skip_filtering) then "--skip_filtering" else ""} \
      ~{if (n_masking) then "--nmasking" else ""} \
      ~{if (full_sequence) then "--full_sequence" else ""} \
      ~{if (no_n_masking) then "--no_nmasking" else ""} \
      ~{if (genome_build) then "--genome_build" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snpsplit:0.4.0--0"
  }
  parameter_meta {
    vcf_file: "Mandatory file specifying SNP information for mouse strains from the Mouse Genomes Project\\n(http://www.sanger.ac.uk/science/data/mouse-genomes-project). The file used and approved is\\ncalled 'mgp.v5.merged.snps_all.dbSNP142.vcf.gz'. Please note that future versions\\nof this file or entirely different VCF files might not work out-of-the-box but may require some\\ntweaking. SNP calls are read from the VCF files, and high confidence SNPs are written into\\na folder in the current working directory called SNPs_<strain_name>/chr<chromosome>.txt,\\nin the following format:\\nSNP-ID     Chromosome  Position    Strand   Ref/SNP\\nexample:   33941939        9       68878541       1       T/G"
    strain: "The strain you would like to use as SNP (ALT) genome. Mandatory. For an overview of strain names\\njust run SNPsplit_genome_preparation selecting '--list_strains'."
    list_strains: "Displays a list of strain names present in the VCF file for use with '--strain <strain_name>'."
    dual_hybrid: "Optional. The resulting genome will no longer relate to the original reference specified with '--reference_genome'.\\nInstead the new Reference (Ref) is defined by '--strain <strain_name>' and the new SNP genome\\nis defined by '--strain2 <strain_name>'. '--dual_hybrid' automatically sets '--full_sequence'.\\nThis will invoke a multi-step process:\\n1) Read/filter SNPs for first strain (specified with '--strain <strain_name>')\\n2) Write full SNP incorporated (and optionally N-masked) genome sequence for first strain\\n3) Read/filter SNPs for second strain (specified with '--strain2 <strain_name>')\\n4) Write full SNP incorporated (and optionally N-masked) genome sequence for second strain\\n5) Generate new Ref/Alt SNP annotations for Strain1/Strain2\\n6) Set first strain as new reference genome and construct full SNP incorporated (and optionally\\nN-masked) genome sequences for Strain1/Strain2"
    strain_two: "Optional for constructing dual hybrid genomes (see '--dual_hybrid' for more information). For an\\noverview of strain names just run SNPsplit_genome_preparation selecting '--list_strains'."
    reference_genome: "The path to the reference genome, typically the strain 'Black6' (C57BL/6J), e.g.\\n'--reference_genome /bi/scratch/Genomes/Mouse/GRCm38/'. Expects one or more FastA files in this folder\\n(file extension: .fa or .fasta)."
    skip_filtering: "This option skips reading and filtering the VCF file. This assumes that a folder named\\n'SNPs_<Strain_Name>' exists in the working directory, and that text files with SNP information\\nare contained therein in the following format:\\nSNP-ID     Chromosome  Position    Strand   Ref/SNP\\nexample:   33941939        9       68878541       1       T/G"
    n_masking: "Write out a genome version for the strain specified where Ref bases are replaced with 'N'. In the\\nRef/SNP example T/G the N-masked genome would now carry an N instead of the T. The N-masked genome\\nis written to a folder called  '<strain_name>_N-masked/'. Default: ON."
    full_sequence: "Write out a genome version for the strain specified where Ref bases are replaced with the SNP base.\\nIn the Ref/SNP example T/G the full sequence genome would now carry a G instead of the T. The full\\nsequence genome is written out to folder called '<strain_name>_full_sequence/'. May be set in\\naddition to '--nmasking'. Default: OFF."
    no_n_masking: "Disable N-masking if it is not desirable. Will automatically set '--full_sequence' instead."
    genome_build: "[name]         Name of the mouse genome build, e.g. GRCm38. Will be incorporated into some of the output files.\\nDefaults to 'GRCm38'."
  }
  output {
    File out_stdout = stdout()
    File out_vcf_file = "${in_vcf_file}"
    Directory out_n_masking = "${in_n_masking}"
    Directory out_full_sequence = "${in_full_sequence}"
  }
}