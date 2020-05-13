class: CommandLineTool
id: readal.cwl
inputs:
- id: in
  doc: Input file in several formats.
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: Output file name (default STDOUT).
  type: string
  inputBinding:
    prefix: -out
- id: format
  doc: Print information about input file format and if sequences are aligned or not.
  type: boolean
  inputBinding:
    prefix: -format
- id: type
  doc: Print information about biological sequences datatype (e.g. nucleotides:dna,
    nucleotides:rna, aminoacids, etc)
  type: boolean
  inputBinding:
    prefix: -type
- id: info
  doc: Print information about sequences number, average sequence length, max & min
    sequence length
  type: boolean
  inputBinding:
    prefix: -info
- id: only_seqs
  doc: Generate output with only residues from input file
  type: boolean
  inputBinding:
    prefix: -onlyseqs
- id: html
  doc: Output residues colored according their physicochemical properties. HTML file.
  type: boolean
  inputBinding:
    prefix: -html
- id: reverse
  doc: Output the reverse of sequences in input file.
  type: boolean
  inputBinding:
    prefix: -reverse
- id: nbr_f
  doc: Output file in NBRF/PIR format
  type: boolean
  inputBinding:
    prefix: -nbrf
- id: mega
  doc: Output file in MEGA format
  type: boolean
  inputBinding:
    prefix: -mega
- id: nexus
  doc: Output file in NEXUS format
  type: boolean
  inputBinding:
    prefix: -nexus
- id: clustal
  doc: Output file in CLUSTAL format
  type: boolean
  inputBinding:
    prefix: -clustal
- id: fast_a
  doc: Output file in FASTA format
  type: boolean
  inputBinding:
    prefix: -fasta
- id: fast_a_m10
  doc: Output file in FASTA format. Sequences name up to 10 characters.
  type: boolean
  inputBinding:
    prefix: -fasta_m10
- id: phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: boolean
  inputBinding:
    prefix: -phylip
- id: phylip_m10
  doc: Output file in PHYLIP/PHYLIP4 format. Sequences name up to 10 characters.
  type: boolean
  inputBinding:
    prefix: -phylip_m10
- id: phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: boolean
  inputBinding:
    prefix: -phylip_paml
- id: phylip_paml_m10
  doc: Output file in PHYLIP format compatible with PAML. Sequences name up to 10
    characters.
  type: boolean
  inputBinding:
    prefix: -phylip_paml_m10
- id: phylip3
  doc: .2           Output file in PHYLIP3.2 format
  type: boolean
  inputBinding:
    prefix: -phylip3
- id: phylip3
  doc: .2_m10       Output file in PHYLIP3.2 format. Sequences name up to 10 characters.
  type: boolean
  inputBinding:
    prefix: -phylip3
outputs: []
cwlVersion: v1.1
baseCommand:
- readal
