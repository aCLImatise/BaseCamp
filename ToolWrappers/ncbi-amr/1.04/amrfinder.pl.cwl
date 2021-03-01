class: CommandLineTool
id: amrfinder.pl.cwl
inputs:
- id: in_update_data
  doc: "AMRFinder database by downloading latest version\nfrom the NCBI ftp site"
  type: string?
  inputBinding:
    prefix: --update_data
- id: in_database
  doc: Directory containing the AMR database
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_output
  doc: tabfile output to this file instead of STDOUT
  type: File?
  inputBinding:
    prefix: --output
- id: in_quiet
  doc: "'t print status messages to STDERR"
  type: string?
  inputBinding:
    prefix: --quiet
- id: in_protein
  doc: Amino-acid sequences to search using BLASTP and
  type: string?
  inputBinding:
    prefix: --protein
- id: in_genomic_sequence_search
  doc: genomic sequence to search using blastx
  type: string?
  inputBinding:
    prefix: -n
- id: in_minimum_proportion_identical
  doc: Minimum proportion identical translated AA residues
  type: long?
  inputBinding:
    prefix: -i
- id: in_minimum_coverage_reference
  doc: "Minimum coverage of reference protein sequence for\na \"BLASTX\" match vs.\
    \ a \"PARTIALX\" match"
  type: long?
  inputBinding:
    prefix: -c
- id: in_translation_table_meaning
  doc: "Translation table for blastx, for options and their meaning see:\nhttps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\n"
  type: long?
  inputBinding:
    prefix: -t
- id: in_hmmer
  doc: -g <gff> GFF file indicating genomic location for proteins in -p <protein>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: tabfile output to this file instead of STDOUT
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- amrfinder.pl
