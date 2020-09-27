class: CommandLineTool
id: fasta_remove.cwl
inputs:
- id: in_fast_a
  doc: (string)                  Fasta file as input.
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_trim_from_space
  doc: trims name at first space
  type: boolean
  inputBinding:
    prefix: -trim_from_space
- id: in_int_remove_sequence_bases
  doc: "(int)                    remove sequence if bases (non Ns)\nare >= set value"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_remove_sequence_nscontiglenis
  doc: "(int)                    remove sequence if Ns/Contig_len\nis > set value"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_oases
  doc: Format the oases output
  type: boolean
  inputBinding:
    prefix: -oases
- id: in_scaffolds
  doc: "It consider oases scaffolds. Contigs\nwill be separated by 10 Ns."
  type: boolean
  inputBinding:
    prefix: -scaffolds
- id: in_log
  doc: (string)                 log file.
  type: boolean
  inputBinding:
    prefix: -log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_remove
