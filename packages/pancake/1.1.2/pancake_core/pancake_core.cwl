class: CommandLineTool
id: pancake_core.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File
  inputBinding:
    prefix: --panfile
- id: in_ref_chrom
  doc: "Reference CHROMOSOME (define either ONE reference\nchromosome OR ONE reference\
    \ genome)"
  type: string
  inputBinding:
    prefix: --ref_chrom
- id: in_ref_genome
  doc: "Reference GENOME (define either ONE reference\nchromosome OR ONE reference\
    \ genome)"
  type: string
  inputBinding:
    prefix: --ref_genome
- id: in_non_ref_chrom_s
  doc: "Names of non-reference CHROMOSOMES (DEFAULT: ALL non-\nreference chromosomes)"
  type: string[]
  inputBinding:
    prefix: --non_ref_chroms
- id: in_non_ref_genomes
  doc: "Names of non-reference GENOMES (DEFAULT: ALL non-\nreference genomes)"
  type: string[]
  inputBinding:
    prefix: --non_ref_genomes
- id: in_exclude_genomes
  doc: "Names of GENOMES to exclude from core analysis\n(DEFAULT: No genomes excluded)"
  type: string[]
  inputBinding:
    prefix: --exclude_genomes
- id: in_exclude_chromosomes
  doc: "Names of CHROMOSOMES to exclude from core analysis\n(DEFAULT: No chromosomes\
    \ excluded)"
  type: string[]
  inputBinding:
    prefix: --exclude_chromosomes
- id: in_max_non_core_frac
  doc: "Maximum fraction of non-core sequence regions within\neach included sequence\
    \ (FLOAT, DEAFULT=0.05)"
  type: long
  inputBinding:
    prefix: --max_non_core_frac
- id: in_min_len
  doc: "minimum length of regions to identify as part of core\ngenome (INTEGER, DEFAULT=25)"
  type: long
  inputBinding:
    prefix: --min_len
- id: in_output
  doc: "directory to which .fasta files of core regions are\nwritten (DEFAULT: core_{REF_CHROM|REF_GENOME})"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_no_output
  doc: if set, supress .fasta output of core regions
  type: boolean
  inputBinding:
    prefix: --no_output
- id: in_bed_file
  doc: ".bed file to which core regions are written (DEFAULT=\ncore_{REF_CHROM|REF_GENOME}.bed)"
  type: File
  inputBinding:
    prefix: --bed_file
- id: in_max_space
  doc: "maximum non-core space allowed within a core region\n(DEFAULT=25)\n"
  type: long
  inputBinding:
    prefix: --max_space
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pancake
- core
