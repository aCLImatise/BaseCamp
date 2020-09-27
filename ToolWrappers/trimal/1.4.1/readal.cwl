class: CommandLineTool
id: readal.cwl
inputs:
- id: in_in
  doc: Input file in several formats.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output file name (default STDOUT).
  type: File
  inputBinding:
    prefix: -out
- id: in_format
  doc: Print information about input file format and if sequences are aligned or not.
  type: boolean
  inputBinding:
    prefix: -format
- id: in_type
  doc: Print information about biological sequences datatype (e.g. nucleotides:dna,
    nucleotides:rna, aminoacids, etc)
  type: boolean
  inputBinding:
    prefix: -type
- id: in_info
  doc: Print information about sequences number, average sequence length, max & min
    sequence length
  type: boolean
  inputBinding:
    prefix: -info
- id: in_only_seqs
  doc: Generate output with only residues from input file
  type: boolean
  inputBinding:
    prefix: -onlyseqs
- id: in_html
  doc: Output residues colored according their physicochemical properties. HTML file.
  type: File
  inputBinding:
    prefix: -html
- id: in_reverse
  doc: Output the reverse of sequences in input file.
  type: boolean
  inputBinding:
    prefix: -reverse
- id: in_nbr_f
  doc: Output file in NBRF/PIR format
  type: File
  inputBinding:
    prefix: -nbrf
- id: in_mega
  doc: Output file in MEGA format
  type: File
  inputBinding:
    prefix: -mega
- id: in_nexus
  doc: Output file in NEXUS format
  type: File
  inputBinding:
    prefix: -nexus
- id: in_clustal
  doc: Output file in CLUSTAL format
  type: File
  inputBinding:
    prefix: -clustal
- id: in_fast_a
  doc: Output file in FASTA format
  type: File
  inputBinding:
    prefix: -fasta
- id: in_fast_a_m_one_zero
  doc: Output file in FASTA format. Sequences name up to 10 characters.
  type: File
  inputBinding:
    prefix: -fasta_m10
- id: in_phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: File
  inputBinding:
    prefix: -phylip
- id: in_phylip_m_one_zero
  doc: Output file in PHYLIP/PHYLIP4 format. Sequences name up to 10 characters.
  type: File
  inputBinding:
    prefix: -phylip_m10
- id: in_phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: File
  inputBinding:
    prefix: -phylip_paml
- id: in_phylip_paml_m_one_zero
  doc: Output file in PHYLIP format compatible with PAML. Sequences name up to 10
    characters.
  type: File
  inputBinding:
    prefix: -phylip_paml_m10
- id: in_phylip_three_dot_two
  doc: Output file in PHYLIP3.2 format
  type: File
  inputBinding:
    prefix: -phylip3.2
- id: in_phylip_three_dot_two_m_one_zero
  doc: Output file in PHYLIP3.2 format. Sequences name up to 10 characters.
  type: File
  inputBinding:
    prefix: -phylip3.2_m10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file name (default STDOUT).
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_html
  doc: Output residues colored according their physicochemical properties. HTML file.
  type: File
  outputBinding:
    glob: $(inputs.in_html)
- id: out_nbr_f
  doc: Output file in NBRF/PIR format
  type: File
  outputBinding:
    glob: $(inputs.in_nbr_f)
- id: out_mega
  doc: Output file in MEGA format
  type: File
  outputBinding:
    glob: $(inputs.in_mega)
- id: out_nexus
  doc: Output file in NEXUS format
  type: File
  outputBinding:
    glob: $(inputs.in_nexus)
- id: out_clustal
  doc: Output file in CLUSTAL format
  type: File
  outputBinding:
    glob: $(inputs.in_clustal)
- id: out_fast_a
  doc: Output file in FASTA format
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a)
- id: out_fast_a_m_one_zero
  doc: Output file in FASTA format. Sequences name up to 10 characters.
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_m_one_zero)
- id: out_phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: File
  outputBinding:
    glob: $(inputs.in_phylip)
- id: out_phylip_m_one_zero
  doc: Output file in PHYLIP/PHYLIP4 format. Sequences name up to 10 characters.
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_m_one_zero)
- id: out_phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_paml)
- id: out_phylip_paml_m_one_zero
  doc: Output file in PHYLIP format compatible with PAML. Sequences name up to 10
    characters.
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_paml_m_one_zero)
- id: out_phylip_three_dot_two
  doc: Output file in PHYLIP3.2 format
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_three_dot_two)
- id: out_phylip_three_dot_two_m_one_zero
  doc: Output file in PHYLIP3.2 format. Sequences name up to 10 characters.
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_three_dot_two_m_one_zero)
cwlVersion: v1.1
baseCommand:
- readal
