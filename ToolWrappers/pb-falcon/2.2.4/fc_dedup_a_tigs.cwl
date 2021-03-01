class: CommandLineTool
id: fc_dedup_a_tigs.cwl
inputs:
- id: in_max_idt
  doc: 'Keep a-tig if the identity (in %) to the primary contig is <= max_idt (default:
    96)'
  type: long?
  inputBinding:
    prefix: --max-idt
- id: in_max_aln_cov
  doc: 'Keep a-tig if the alignment coverage (in %) on the a-tig is <= max_aln_cov
    (default: 97)'
  type: long?
  inputBinding:
    prefix: --max-aln-cov
- id: in_min_len_diff
  doc: 'Keep a-tig if the length different > min_len_diff (default: 500)'
  type: long?
  inputBinding:
    prefix: --min-len-diff
- id: in_min_seq_len
  doc: 'Branches with length less than this threshold will always be deduplicated.
    (default: 2000)'
  type: long?
  inputBinding:
    prefix: --min-seq-len
- id: in_ploidy
  doc: 'For a diplid genome, 2 branches per SV are expected. This parameter limits
    the number of pairwise comparison. If <= 0, this threshold is not applied. (default:
    2)'
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_a_ctg_all
  doc: "Input set of all associate contigs for deduplication. (default: a_ctg_all.fasta)\n"
  type: string?
  inputBinding:
    prefix: --a-ctg-all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_dedup_a_tigs
