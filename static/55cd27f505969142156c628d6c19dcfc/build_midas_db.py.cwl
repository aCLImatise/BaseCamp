class: CommandLineTool
id: build_midas_db.py.cwl
inputs:
- id: in_threads
  doc: Number of threads to use (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compress
  doc: Compress output files with gzip (False)
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_max_species
  doc: "Maximum number of species to process from input (use all).\nUseful for quick\
    \ tests"
  type: long?
  inputBinding:
    prefix: --max_species
- id: in_max_genomes
  doc: "Maximum number of genomes to process per species (use all).\nUseful for quick\
    \ tests\n"
  type: long?
  inputBinding:
    prefix: --max_genomes
- id: in_in_dir
  doc: "Path to directory of input genomes\nEach subdirectory should be named according\
    \ to a genome_id\nEach subdirectory should contain (replace genome_id):\ngenome_id.fna:\
    \ Genomic DNA sequence in FASTA format\ngenome_id.ffn: Gene DNA sequences in FASTA\
    \ format\ngenome_id.faa: Translated genes in FASTA format"
  type: string
  inputBinding:
    position: 0
- id: in_map_file
  doc: "Path to mapping file that specifies which genomes belonging to the same species.\n\
    The file should be tab-delimited file with a header and 3 fields:\ngenome_id (CHAR):\
    \ corresponds to subdirectory within INDIR\nspecies_id (CHAR): species identifier\
    \ for genome_id\nrep_genome (0 or 1): indicator if genome_id should be used for\
    \ SNP calling"
  type: string
  inputBinding:
    position: 1
- id: in_outdir
  doc: Directory to store MIDAS database
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- build_midas_db.py
