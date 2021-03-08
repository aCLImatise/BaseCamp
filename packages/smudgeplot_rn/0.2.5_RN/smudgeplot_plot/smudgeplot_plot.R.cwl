class: CommandLineTool
id: smudgeplot_plot.R.cwl
inputs:
- id: in_homozygous
  doc: "Assume no heterozygosity in the genome - plotting a\nparalog structure; [default\
    \ FALSE]"
  type: boolean?
  inputBinding:
    prefix: --homozygous
- id: in_input
  doc: "name of the input tsv file with covarages [default\n\"coverages_2.tsv\"]"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "name pattern used for the output files\n(OUTPUT_smudgeplot.png, OUTPUT_summary.txt,\n\
    OUTPUT_warrnings.txt) [default \"smudgeplot\"]"
  type: string?
  inputBinding:
    prefix: --output
- id: in_title
  doc: "name printed at the top of the smudgeplot [default\nnone]"
  type: string?
  inputBinding:
    prefix: --title
- id: in_quantile_filt
  doc: "Remove kmer pairs with coverage over the specified\nquantile; [default none]"
  type: string?
  inputBinding:
    prefix: --quantile_filt
- id: in_n_cov
  doc: "the haploid coverage of the sequencing data [default\ninference from data]"
  type: string?
  inputBinding:
    prefix: --n_cov
- id: in_low_cut_off
  doc: "the lower boundary used when dumping kmers [default\nmin(total_pair_cov) /\
    \ 2]"
  type: long?
  inputBinding:
    prefix: --low_cutoff
- id: in_nbins
  doc: "the number of nbins used for smudgeplot matrix (nbins\nx nbins) [default autodetection]"
  type: long?
  inputBinding:
    prefix: -nbins
- id: in_km_er_size
  doc: "The kmer size used to calculate kmer spectra [default\n21]\n"
  type: long?
  inputBinding:
    prefix: --kmer_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot_plot.R
