class: CommandLineTool
id: SNPsplit_genome_preparation.cwl
inputs:
- id: in_vcf_file
  doc: "Mandatory file specifying SNP information for mouse strains from the Mouse\
    \ Genomes Project\n(http://www.sanger.ac.uk/science/data/mouse-genomes-project).\
    \ The file used and approved is\ncalled 'mgp.v5.merged.snps_all.dbSNP142.vcf.gz'.\
    \ Please note that future versions\nof this file or entirely different VCF files\
    \ might not work out-of-the-box but may require some\ntweaking. SNP calls are\
    \ read from the VCF files, and high confidence SNPs are written into\na folder\
    \ in the current working directory called SNPs_<strain_name>/chr<chromosome>.txt,\n\
    in the following format:\nSNP-ID     Chromosome  Position    Strand   Ref/SNP\n\
    example:   33941939        9       68878541       1       T/G"
  type: File?
  inputBinding:
    prefix: --vcf_file
- id: in_strain
  doc: "The strain you would like to use as SNP (ALT) genome. Mandatory. For an overview\
    \ of strain names\njust run SNPsplit_genome_preparation selecting '--list_strains'."
  type: string?
  inputBinding:
    prefix: --strain
- id: in_list_strains
  doc: Displays a list of strain names present in the VCF file for use with '--strain
    <strain_name>'.
  type: boolean?
  inputBinding:
    prefix: --list_strains
- id: in_dual_hybrid
  doc: "Optional. The resulting genome will no longer relate to the original reference\
    \ specified with '--reference_genome'.\nInstead the new Reference (Ref) is defined\
    \ by '--strain <strain_name>' and the new SNP genome\nis defined by '--strain2\
    \ <strain_name>'. '--dual_hybrid' automatically sets '--full_sequence'.\nThis\
    \ will invoke a multi-step process:\n1) Read/filter SNPs for first strain (specified\
    \ with '--strain <strain_name>')\n2) Write full SNP incorporated (and optionally\
    \ N-masked) genome sequence for first strain\n3) Read/filter SNPs for second strain\
    \ (specified with '--strain2 <strain_name>')\n4) Write full SNP incorporated (and\
    \ optionally N-masked) genome sequence for second strain\n5) Generate new Ref/Alt\
    \ SNP annotations for Strain1/Strain2\n6) Set first strain as new reference genome\
    \ and construct full SNP incorporated (and optionally\nN-masked) genome sequences\
    \ for Strain1/Strain2"
  type: boolean?
  inputBinding:
    prefix: --dual_hybrid
- id: in_strain_two
  doc: "Optional for constructing dual hybrid genomes (see '--dual_hybrid' for more\
    \ information). For an\noverview of strain names just run SNPsplit_genome_preparation\
    \ selecting '--list_strains'."
  type: long?
  inputBinding:
    prefix: --strain2
- id: in_reference_genome
  doc: "The path to the reference genome, typically the strain 'Black6' (C57BL/6J),\
    \ e.g.\n'--reference_genome /bi/scratch/Genomes/Mouse/GRCm38/'. Expects one or\
    \ more FastA files in this folder\n(file extension: .fa or .fasta)."
  type: boolean?
  inputBinding:
    prefix: --reference_genome
- id: in_skip_filtering
  doc: "This option skips reading and filtering the VCF file. This assumes that a\
    \ folder named\n'SNPs_<Strain_Name>' exists in the working directory, and that\
    \ text files with SNP information\nare contained therein in the following format:\n\
    SNP-ID     Chromosome  Position    Strand   Ref/SNP\nexample:   33941939     \
    \   9       68878541       1       T/G"
  type: boolean?
  inputBinding:
    prefix: --skip_filtering
- id: in_n_masking
  doc: "Write out a genome version for the strain specified where Ref bases are replaced\
    \ with 'N'. In the\nRef/SNP example T/G the N-masked genome would now carry an\
    \ N instead of the T. The N-masked genome\nis written to a folder called  '<strain_name>_N-masked/'.\
    \ Default: ON."
  type: Directory?
  inputBinding:
    prefix: --nmasking
- id: in_full_sequence
  doc: "Write out a genome version for the strain specified where Ref bases are replaced\
    \ with the SNP base.\nIn the Ref/SNP example T/G the full sequence genome would\
    \ now carry a G instead of the T. The full\nsequence genome is written out to\
    \ folder called '<strain_name>_full_sequence/'. May be set in\naddition to '--nmasking'.\
    \ Default: OFF."
  type: Directory?
  inputBinding:
    prefix: --full_sequence
- id: in_no_n_masking
  doc: Disable N-masking if it is not desirable. Will automatically set '--full_sequence'
    instead.
  type: boolean?
  inputBinding:
    prefix: --no_nmasking
- id: in_genome_build
  doc: "[name]         Name of the mouse genome build, e.g. GRCm38. Will be incorporated\
    \ into some of the output files.\nDefaults to 'GRCm38'."
  type: boolean?
  inputBinding:
    prefix: --genome_build
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf_file
  doc: "Mandatory file specifying SNP information for mouse strains from the Mouse\
    \ Genomes Project\n(http://www.sanger.ac.uk/science/data/mouse-genomes-project).\
    \ The file used and approved is\ncalled 'mgp.v5.merged.snps_all.dbSNP142.vcf.gz'.\
    \ Please note that future versions\nof this file or entirely different VCF files\
    \ might not work out-of-the-box but may require some\ntweaking. SNP calls are\
    \ read from the VCF files, and high confidence SNPs are written into\na folder\
    \ in the current working directory called SNPs_<strain_name>/chr<chromosome>.txt,\n\
    in the following format:\nSNP-ID     Chromosome  Position    Strand   Ref/SNP\n\
    example:   33941939        9       68878541       1       T/G"
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf_file)
- id: out_n_masking
  doc: "Write out a genome version for the strain specified where Ref bases are replaced\
    \ with 'N'. In the\nRef/SNP example T/G the N-masked genome would now carry an\
    \ N instead of the T. The N-masked genome\nis written to a folder called  '<strain_name>_N-masked/'.\
    \ Default: ON."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_n_masking)
- id: out_full_sequence
  doc: "Write out a genome version for the strain specified where Ref bases are replaced\
    \ with the SNP base.\nIn the Ref/SNP example T/G the full sequence genome would\
    \ now carry a G instead of the T. The full\nsequence genome is written out to\
    \ folder called '<strain_name>_full_sequence/'. May be set in\naddition to '--nmasking'.\
    \ Default: OFF."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_full_sequence)
hints: []
cwlVersion: v1.1
baseCommand:
- SNPsplit_genome_preparation
