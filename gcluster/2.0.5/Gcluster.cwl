class: CommandLineTool
id: Gcluster.pl.cwl
inputs:
- id: genbank_file_directory
  doc: A Directory containing annotated genomes as Genbank format file. To avoid a
    mistake, genome names cannot use special character, such as space, equal. For
    large number of genomes, users are recommended to download using Aspera, a high-speed
    file transfer tool (https://downloads.asperasoft.com/). If enough rgb colors provided
    or not to color homologous genes, there are no limitation to the number of genomes
    and the number of genes flanking gene of interest for Gcluster.
  type: boolean
  inputBinding:
    prefix: --genbank_file_directory
- id: interested_gene_file
  doc: 'A list of the interested gene, in which each line contains a locus tag of
    the interested gene for individual genome. Users are recommended to use "interested_gene_generation.pl"
    in Gcluster package for generation this file. In this situation, user needs to
    provide a blast database file in FASTA format, which contains at least one protein
    sequence homologous to the gene of interest. To map genome contexts to a given
    phylogeny or to order the genome contexts using a "strain_reorder_file", only
    one gene of interest is allowed to provide for each genome. For example: AX2_RS10405    #arsenite_oxidase_large_subunit;Achromobacter_xylosoxidans_NBRC_15126_ATCC_27061
    KUC_RS10495    #arsenite_oxidase_large_subunit;Halomonas_boliviensis_LC1 KYC_RS14580    #arsenite_oxidase_large_subunit;Achromobacter_arsenitoxydans_SY8
    ...'
  type: boolean
  inputBinding:
    prefix: --interested_gene_file
- id: start_at_map
  doc: "Jump to map generation (Default: F). Generation of a collection of sub-TFT\
    \ tables and homologous gene clusters has already been done. This parameter is\
    \ very useful to customize the map quickly. It should be noted that there's no\
    \ sense to reset \"flanking_gene_number\" parameter if this parameter set to \"\
    T\". Importantly, at this step, users can revise the gene label by directly edition\
    \ of the locus_tag in sub_TFT file or all_orthomcl.out. In sub_TFT files and all_orthomcl.out\
    \ file, there are two forms of gene locus tag, (1) \"Locus_Tag\", in this case,\
    \ no genename is defined for a gene; (2) \"GeneName;Locus_Tag\", in this case,\
    \ genename is given for a gene. For the first form, user can revise gene label\
    \ by addition of a genename followed by a semicolon in the front of the Locus_Tag.\
    \ For the second form, user can revise gene label by modification of the genename."
  type: boolean
  inputBinding:
    prefix: --start_at_map
outputs: []
cwlVersion: v1.1
baseCommand:
- Gcluster.pl
