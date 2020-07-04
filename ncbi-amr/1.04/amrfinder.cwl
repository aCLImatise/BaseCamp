class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/amrfinder.pl.cwl
inputs:
- id: help_text
  doc: help text
  type: string
  inputBinding:
    prefix: -h
- id: version_information
  doc: 'version information '
  type: string
  inputBinding:
    prefix: -v
- id: amrfinder_database
  doc: AMRFinder database
  type: string
  inputBinding:
    prefix: -U
- id: directory_containing_database
  doc: Directory containing the AMR database
  type: string
  inputBinding:
    prefix: -d
- id: tabfile_output_file
  doc: tabfile output to this file instead of STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: mode_print_messages
  doc: mode (don't print status messages to STDERR)
  type: string
  inputBinding:
    prefix: -q
- id: aminoacid_sequences_search
  doc: Amino-acid sequences to search using BLASTP and HMMER
  type: string
  inputBinding:
    prefix: -p
- id: gff_file_indicating
  doc: GFF file indicating genomic location for proteins in -p <protein>
  type: string
  inputBinding:
    prefix: -g
- id: genomic_sequence_search
  doc: genomic sequence to search using BLASTX
  type: string
  inputBinding:
    prefix: -n
- id: minimum_proportion_identical
  doc: Minimum proportion identical translated AA residues
  type: string
  inputBinding:
    prefix: -i
- id: minimum_coverage_reference
  doc: Minimum coverage of reference protein sequence
  type: string
  inputBinding:
    prefix: -c
- id: translation_table_blastx
  doc: Translation table for blastx
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- amrfinder.pl
