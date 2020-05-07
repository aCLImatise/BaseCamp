class: CommandLineTool
id: build_midas_db.py.cwl
inputs:
- id: in_dir
  doc: 'Path to directory of input genomes Each subdirectory should be named according
    to a genome_id Each subdirectory should contain (replace genome_id): genome_id.fna:
    Genomic DNA sequence in FASTA format genome_id.ffn: Gene DNA sequences in FASTA
    format genome_id.faa: Translated genes in FASTA format'
  type: string
  inputBinding:
    position: 0
- id: map_file
  doc: 'Path to mapping file that specifies which genomes belonging to the same species.
    The file should be tab-delimited file with a header and 3 fields: genome_id (CHAR):
    corresponds to subdirectory within INDIR species_id (CHAR): species identifier
    for genome_id rep_genome (0 or 1): indicator if genome_id should be used for SNP
    calling'
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: Directory to store MIDAS database
  type: string
  inputBinding:
    position: 2
- id: threads
  doc: Number of threads to use (1)
  type: long
  inputBinding:
    prefix: --threads
- id: compress
  doc: Compress output files with gzip (False)
  type: boolean
  inputBinding:
    prefix: --compress
- id: max_species
  doc: Maximum number of species to process from input (use all). Useful for quick
    tests
  type: long
  inputBinding:
    prefix: --max_species
- id: max_genomes
  doc: Maximum number of genomes to process per species (use all). Useful for quick
    tests
  type: long
  inputBinding:
    prefix: --max_genomes
outputs: []
cwlVersion: v1.1
baseCommand:
- build_midas_db.py
