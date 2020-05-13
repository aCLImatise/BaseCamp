class: CommandLineTool
id: vcf2distancematrix.py.cwl
inputs:
- id: out
  doc: Path to the maxtrix output file in given format. [REQUIRED. default format
    is tab separated. use --format to change format]
  type: string
  inputBinding:
    prefix: --out
- id: deletion
  doc: Method of recombination filtering. Either 'pairwise' or 'complete' ['pairwise']
  type: string
  inputBinding:
    prefix: --deletion
- id: substitution
  doc: Substituition model. Either 'number_of_differences', 'jc69', 'k80', 'tn84'
    or 't93' ['number_of_differences']
  type: string
  inputBinding:
    prefix: --substitution
- id: include
  doc: FILE    Only include positions in BED file in the FASTA
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: FILE    Exclude any positions specified in the BED file.
  type: string
  inputBinding:
    prefix: --exclude
- id: remove_recombination
  doc: Attempt to remove recombination from distance matrix. [don't]
  type: boolean
  inputBinding:
    prefix: --remove-recombination
- id: ref_genome
  doc: FILE, -g FASTA FILE Reference genome used for SNP calling [Required for recombination
    removal].
  type: string
  inputBinding:
    prefix: --refgenome
- id: ref_genome_name
  doc: Name of reference genome in input alignment [Required if input option 3 is
    used and reference is not named 'reference'].
  type: string
  inputBinding:
    prefix: --refgenomename
- id: threshold
  doc: Density tyhreshold above mean density for relevant pair. [1.0].
  type: double
  inputBinding:
    prefix: --threshold
- id: threads
  doc: Number of threads to use. [1].
  type: long
  inputBinding:
    prefix: --threads
- id: format
  doc: Change format for output file. Available options csv, tsv and mega. [tsv]
  type: string
  inputBinding:
    prefix: --format
- id: tree
  doc: "Make an NJ tree and write it to the given file in newick format. [Default:\
    \ Don't make tree, only matrix]"
  type: File
  inputBinding:
    prefix: --tree
- id: with_stats
  doc: Write additional files with information on removed recombinant SNPs. [don't]
  type: boolean
  inputBinding:
    prefix: --with-stats
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2distancematrix.py
