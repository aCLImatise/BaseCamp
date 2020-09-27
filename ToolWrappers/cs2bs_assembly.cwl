class: CommandLineTool
id: cs2bs_assembly.cwl
inputs:
- id: in_fast_a
  doc: (string)         Double encoded color space assembly in FASTA format.
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_sam
  doc: (string)         Double encoded mapped reads into the double encoded assembly
    (it requires pass_v1.7 or later)
  type: boolean
  inputBinding:
    prefix: -sam
- id: in_int_minimum_contigs
  doc: (int)           Minimum contigs length [100]
  type: boolean
  inputBinding:
    prefix: -l
- id: in_float_maximum_tolerated
  doc: (float)          Maximum tolerated fraction of Ns for each contig. [1]
  type: boolean
  inputBinding:
    prefix: -n
- id: in_validate_anchored_bases
  doc: (int)           Minimum coverage required to validate anchored bases. [1]
  type: boolean
  inputBinding:
    prefix: -C
- id: in_operate_assembly_correction
  doc: (int)           Minimum coverage required to operate the assembly correction.
    [1]
  type: boolean
  inputBinding:
    prefix: -c
- id: in_erode
  doc: (int)           Minimum coverage considered to erode contig ends [2]
  type: boolean
  inputBinding:
    prefix: -erode
- id: in_float_zscore_required
  doc: (float)          z-score required to calculate the coverage threshold basing
    on coverage analysis
  type: boolean
  inputBinding:
    prefix: -z
- id: in_clean
  doc: (int)           Basing on a threshold number of Ns it splits putative chimeric
    contigs
  type: boolean
  inputBinding:
    prefix: -clean
- id: in_de_scaffolding
  doc: "(int, string) it splits scaffolds into contigs considering Ns STRETCH (>=\
    \ 1st set number) and\nit includes a suffix tag in the contigs name"
  type: boolean
  inputBinding:
    prefix: -descaffolding
- id: in_erosion
  doc: it doesn't erodes contig ends basing on sequence coverage and undefined bases
  type: boolean
  inputBinding:
    prefix: -erosion
- id: in_log
  doc: (string)         log file.
  type: boolean
  inputBinding:
    prefix: -log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cs2bs_assembly
