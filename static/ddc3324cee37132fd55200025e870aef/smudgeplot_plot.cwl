class: CommandLineTool
id: smudgeplot_plot.R.cwl
inputs:
- id: homozygous
  doc: Assume no heterozygosity in the genome - plotting a paralog structure; [default
    FALSE]
  type: boolean
  inputBinding:
    prefix: --homozygous
- id: input
  doc: name of the input tsv file with covarages [default "coverages_2.tsv"]
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: name pattern used for the output files (OUTPUT_smudgeplot.png, OUTPUT_summary.txt,
    OUTPUT_warrnings.txt) [default "smudgeplot"]
  type: string
  inputBinding:
    prefix: --output
- id: title
  doc: name printed at the top of the smudgeplot [default none]
  type: string
  inputBinding:
    prefix: --title
- id: quantile_filt
  doc: Remove kmer pairs with coverage over the specified quantile; [default none]
  type: string
  inputBinding:
    prefix: --quantile_filt
- id: n_cov
  doc: the haploid coverage of the sequencing data [default inference from data]
  type: string
  inputBinding:
    prefix: --n_cov
- id: low_cut_off
  doc: the lower boundary used when dumping kmers [default min(total_pair_cov) / 2]
  type: string
  inputBinding:
    prefix: --low_cutoff
- id: nbins
  doc: the number of nbins used for smudgeplot matrix (nbins x nbins) [default autodetection]
  type: string
  inputBinding:
    prefix: -nbins
- id: km_er_size
  doc: The kmer size used to calculate kmer spectra [default 21]
  type: string
  inputBinding:
    prefix: --kmer_size
outputs: []
cwlVersion: v1.1
baseCommand:
- smudgeplot_plot.R
