class: CommandLineTool
id: ../../../smudgeplot.py_plot.cwl
inputs:
- id: pattern_used_name
  doc: The pattern used to name the output (smudgeplot).
  type: string
  inputBinding:
    prefix: -o
- id: remove_kmer_pairs
  doc: Remove kmer pairs with coverage over the specified quantile; (default none).
  type: string
  inputBinding:
    prefix: -q
- id: lower_boundary_used
  doc: The lower boundary used when dumping kmers (default min(total_pair_cov) / 2).
  type: string
  inputBinding:
    prefix: -L
- id: expected_haploid_coverage
  doc: The expected haploid coverage (default estimated from data).
  type: string
  inputBinding:
    prefix: -n
- id: title
  doc: name printed at the top of the smudgeplot (default none).
  type: string
  inputBinding:
    prefix: --title
- id: nbins
  doc: The number of nbins used for smudgeplot matrix (nbins x nbins) (default autodetection).
  type: string
  inputBinding:
    prefix: -nbins
- id: the_length_kmer
  doc: The length of the kmer.
  type: string
  inputBinding:
    prefix: -k
- id: homozygous
  doc: Assume no heterozygosity in the genome - plotting a paralog structure; (default
    False).
  type: boolean
  inputBinding:
    prefix: --homozygous
- id: in_file
  doc: name of the input tsv file with covarages (default "coverages_2.tsv")."
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- plot
