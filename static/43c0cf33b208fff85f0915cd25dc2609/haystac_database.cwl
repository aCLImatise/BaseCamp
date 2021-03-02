class: CommandLineTool
id: haystac_database.cwl
inputs:
- id: in_mode
  doc: "Database creation mode for haystac [fetch, index,\nbuild]"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_output
  doc: Path to the database output directory
  type: File?
  inputBinding:
    prefix: --output
- id: in_query
  doc: "Database query in the NCBI query language. Please\nrefer to the documentation\
    \ for assistance with\nconstructing a valid query."
  type: string?
  inputBinding:
    prefix: --query
- id: in_query_file
  doc: File containing a database query in the NCBI query
  type: File?
  inputBinding:
    prefix: --query-file
- id: in_sequences_file
  doc: "Tab delimited file containing one record per row: the\nname of the taxon,\
    \ a user defined accession code, and\nthe path to the fasta file (optionally compressed)."
  type: File?
  inputBinding:
    prefix: --sequences-file
- id: in_refseq_rep
  doc: "Use one of the RefSeq curated tables to construct a\nDB. Includes all prokaryotic\
    \ species (excluding\nstrains) from the representative RefSeq DB, or all the\n\
    species and strains from the viruses DB, or all the\nspecies and subspecies from\
    \ the eukaryotes DB. If\nmultiple accessions exist for a given species/strain,\n\
    the first pair of species/accession is kept. Available\nRefSeq tables to use [prokaryote_rep,\
    \ viruses,\neukaryotes]."
  type: string?
  inputBinding:
    prefix: --refseq-rep
- id: in_force_accessions
  doc: "Disable validation checks for 'anomalous' assembly\nflags in NCBI (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --force-accessions
- id: in_exclude_accessions
  doc: "[<accession> ...]\nList of NCBI accessions to exclude. (default: [])"
  type: string?
  inputBinding:
    prefix: --exclude-accessions
- id: in_resolve_accessions
  doc: "Pick the first accession when two accessions for a\ntaxon can be found in\
    \ user provided input files\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --resolve-accessions
- id: in_bowtie_two_scaling
  doc: "Rescaling factor to keep the bowtie2 mutlifasta index\nbelow the maximum memory\
    \ limit (default: 25.0)"
  type: double?
  inputBinding:
    prefix: --bowtie2-scaling
- id: in_rank
  doc: "Taxonomic rank to perform the identifications on\n[genus, species, subspecies,\
    \ serotype] (default:\nspecies)"
  type: string?
  inputBinding:
    prefix: --rank
- id: in_genera
  doc: "[<genus> ...]\nList of genera to restrict the abundance calculations."
  type: string?
  inputBinding:
    prefix: --genera
- id: in_mtdna
  doc: "For eukaryotes, download mitochondrial genomes only.\nNot to be used with\
    \ --refseq-rep or queries containing\nprokaryotes (default: False)"
  type: boolean?
  inputBinding:
    prefix: --mtDNA
- id: in_seed
  doc: Random seed for database indexing
  type: long?
  inputBinding:
    prefix: --seed
- id: in_cores
  doc: 'Maximum number of CPU cores to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_mem
  doc: 'Maximum memory (MB) to use (default: 16012)'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  inputBinding:
    prefix: --unlock
- id: in_debug
  doc: 'Enable debugging mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_snake_make
  doc: "'<json>'  Pass additional flags to the `snakemake` scheduler."
  type: boolean?
  inputBinding:
    prefix: --snakemake
- id: in_language_dot
  doc: --accessions-file <path>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the database output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_unlock)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haystac:0.3.2--py36_0
cwlVersion: v1.1
baseCommand:
- haystac
- database
