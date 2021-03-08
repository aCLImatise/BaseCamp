class: CommandLineTool
id: ppanggolin_fasta.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_fast_a
  doc: "A tab-separated file listing the organism names, and\nthe fasta filepath of\
    \ its genomic sequence(s) (the\nfastas can be compressed with gzip). One line\
    \ per\norganism. (default: None)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_an_no
  doc: "A tab-separated file listing the organism names, and\nthe gff/gbff filepath\
    \ of its annotations (the files\ncan be compressed with gzip). One line per organism.\n\
    If this is provided, those annotations will be used.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --anno
- id: in_regions
  doc: "Write the RGP nucleotide sequences (requires --anno or\n--fasta used to compute\
    \ the pangenome to be given)\n(default: None)"
  type: string?
  inputBinding:
    prefix: --regions
- id: in_genes
  doc: 'Write all nucleotide CDS sequences (default: None)'
  type: string?
  inputBinding:
    prefix: --genes
- id: in_prot_families
  doc: "Write representative amino acid sequences of gene\nfamilies (default: None)"
  type: string?
  inputBinding:
    prefix: --prot_families
- id: in_gene_families
  doc: "Write representative nucleotide sequences of gene\nfamilies (default: None)"
  type: string?
  inputBinding:
    prefix: --gene_families
- id: in_soft_core
  doc: "Soft core threshold to use if 'softcore' partition is\nchosen (default: 0.95)"
  type: double?
  inputBinding:
    prefix: --soft_core
- id: in_compress
  doc: 'Compress the files in .gz (default: False)'
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- fasta
