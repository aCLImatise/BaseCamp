class: CommandLineTool
id: smudgeplot.py_plot.cwl
inputs:
- id: in_pattern_used_name
  doc: The pattern used to name the output (smudgeplot).
  type: string?
  inputBinding:
    prefix: -o
- id: in_remove_kmer_pairs
  doc: "Remove kmer pairs with coverage over the specified\nquantile; (default none)."
  type: string?
  inputBinding:
    prefix: -q
- id: in_lower_boundary_used
  doc: "The lower boundary used when dumping kmers (default\nmin(total_pair_cov) /\
    \ 2)."
  type: long?
  inputBinding:
    prefix: -L
- id: in_expected_haploid_coverage
  doc: "The expected haploid coverage (default estimated from\ndata)."
  type: string?
  inputBinding:
    prefix: -n
- id: in_title
  doc: "name printed at the top of the smudgeplot (default\nnone)."
  type: string?
  inputBinding:
    prefix: --title
- id: in_nbins
  doc: "The number of nbins used for smudgeplot matrix (nbins\nx nbins) (default autodetection)."
  type: long?
  inputBinding:
    prefix: -nbins
- id: in_the_length_kmer
  doc: The length of the kmer.
  type: long?
  inputBinding:
    prefix: -k
- id: in_homozygous
  doc: "Assume no heterozygosity in the genome - plotting a\nparalog structure; (default\
    \ False).\n"
  type: boolean?
  inputBinding:
    prefix: --homozygous
- id: in_in_file
  doc: "name of the input tsv file with covarages (default\n\"coverages_2.tsv\").\""
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- plot
