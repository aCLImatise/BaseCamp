#!/usr/bin/env cwl-runner

baseCommand:
- build_midas_db.py
class: CommandLineTool
cwlVersion: v1.0
id: build_midas_db.py
inputs:
- doc: 'Path to directory of input genomes Each subdirectory should be named according
    to a genome_id Each subdirectory should contain (replace genome_id): genome_id.fna:
    Genomic DNA sequence in FASTA format genome_id.ffn: Gene DNA sequences in FASTA
    format genome_id.faa: Translated genes in FASTA format'
  id: in_dir
  inputBinding:
    position: 0
  type: string
- doc: 'Path to mapping file that specifies which genomes belonging to the same species.
    The file should be tab-delimited file with a header and 3 fields: genome_id (CHAR):
    corresponds to subdirectory within INDIR species_id (CHAR): species identifier
    for genome_id rep_genome (0 or 1): indicator if genome_id should be used for SNP
    calling'
  id: map_file
  inputBinding:
    position: 1
  type: string
- doc: Directory to store MIDAS database
  id: outdir
  inputBinding:
    position: 2
  type: string
- doc: Number of threads to use (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: Compress output files with gzip (False)
  id: compress
  inputBinding:
    prefix: --compress
  type: boolean
- doc: Maximum number of species to process from input (use all). Useful for quick
    tests
  id: max_species
  inputBinding:
    prefix: --max_species
  type: long
- doc: Maximum number of genomes to process per species (use all). Useful for quick
    tests
  id: max_genomes
  inputBinding:
    prefix: --max_genomes
  type: long
