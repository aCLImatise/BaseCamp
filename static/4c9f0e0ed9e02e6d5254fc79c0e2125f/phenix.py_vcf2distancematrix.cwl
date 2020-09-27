class: CommandLineTool
id: phenix.py_vcf2distancematrix.cwl
inputs:
- id: in_out
  doc: "Path to the maxtrix output file in given format.\n[REQUIRED. default format\
    \ is tab separated. use\n--format to change format]"
  type: File
  inputBinding:
    prefix: --out
- id: in_directory
  doc: Path to the directory with .vcf files. Input option 1.
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_input
  doc: List of VCF files to process. Input option 2.
  type: string[]
  inputBinding:
    prefix: --input
- id: in_alignment_input
  doc: "FASTA FILE, -a MULTI FASTA FILE\nMulti fasta file with whole genome input\
    \ alignment.\nInput option 3."
  type: File
  inputBinding:
    prefix: --alignment-input
- id: in_deletion
  doc: "Method of recombination filtering. Either 'pairwise'\nor 'complete' ['pairwise']"
  type: string
  inputBinding:
    prefix: --deletion
- id: in_substitution
  doc: "Substituition model. Either 'number_of_differences',\n'jc69', 'k80', 'tn84'\
    \ or 't93'\n['number_of_differences']"
  type: long
  inputBinding:
    prefix: --substitution
- id: in_include
  doc: FILE    Only include positions in BED file in the FASTA
  type: File
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: FILE    Exclude any positions specified in the BED file.
  type: File
  inputBinding:
    prefix: --exclude
- id: in_remove_recombination
  doc: "Attempt to remove recombination from distance matrix.\n[don't]"
  type: boolean
  inputBinding:
    prefix: --remove-recombination
- id: in_ref_genome
  doc: "FILE, -g FASTA FILE\nReference genome used for SNP calling [Required for\n\
    recombination removal]."
  type: File
  inputBinding:
    prefix: --refgenome
- id: in_ref_genome_name
  doc: "Name of reference genome in input alignment [Required\nif input option 3 is\
    \ used and reference is not named\n'reference']."
  type: long
  inputBinding:
    prefix: --refgenomename
- id: in_threshold
  doc: "Density tyhreshold above mean density for relevant\npair. [1.0]."
  type: double
  inputBinding:
    prefix: --threshold
- id: in_threads
  doc: Number of threads to use. [1].
  type: long
  inputBinding:
    prefix: --threads
- id: in_format
  doc: "Change format for output file. Available options csv,\ntsv and mega. [tsv]"
  type: File
  inputBinding:
    prefix: --format
- id: in_tree
  doc: "Make an NJ tree and write it to the given file in\nnewick format. [Default:\
    \ Don't make tree, only matrix]"
  type: File
  inputBinding:
    prefix: --tree
- id: in_with_stats
  doc: "Write additional files with information on removed\nrecombinant SNPs. [don't]\n"
  type: boolean
  inputBinding:
    prefix: --with-stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Path to the maxtrix output file in given format.\n[REQUIRED. default format\
    \ is tab separated. use\n--format to change format]"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_format
  doc: "Change format for output file. Available options csv,\ntsv and mega. [tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- phenix.py
- vcf2distancematrix
