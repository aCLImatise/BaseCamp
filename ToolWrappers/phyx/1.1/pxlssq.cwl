class: CommandLineTool
id: pxlssq.cwl
inputs:
- id: in_seq_f
  doc: input seq file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_indiv
  doc: output stats for individual sequences
  type: boolean?
  inputBinding:
    prefix: --indiv
- id: in_n_seq
  doc: return the number of sequences
  type: boolean?
  inputBinding:
    prefix: --nseq
- id: in_nchar
  doc: "return the number of characters (only if aligned)\n- for unaligned seqs, use\
    \ with -i flag"
  type: boolean?
  inputBinding:
    prefix: --nchar
- id: in_labels
  doc: return all taxon labels (one per line)
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_prot
  doc: force interpret as protein (if inference fails)
  type: boolean?
  inputBinding:
    prefix: --prot
- id: in_aligned
  doc: return whether sequences are aligned (same length)
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_freqs
  doc: return character state frequencies
  type: boolean?
  inputBinding:
    prefix: --freqs
- id: in_missing
  doc: return the proportion of missing (-,?) characters
  type: boolean?
  inputBinding:
    prefix: --missing
- id: in_out_f
  doc: output stats file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output stats file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxlssq
