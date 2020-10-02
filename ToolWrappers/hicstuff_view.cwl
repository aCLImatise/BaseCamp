class: CommandLineTool
id: hicstuff_view.cwl
inputs:
- id: in_binning
  doc: "[bp|kb|Mb|Gb]   Subsampling factor or fix value in\nbasepairs to use for binning\n\
    [default: 1]."
  type: long
  inputBinding:
    prefix: --binning
- id: in_cmap
  doc: "The name of a matplotlib colormap to\nuse for the matrix. [default: Reds]"
  type: string
  inputBinding:
    prefix: --cmap
- id: in_circular
  doc: Use if the genome is circular.
  type: boolean
  inputBinding:
    prefix: --circular
- id: in_despeckle
  doc: "Remove sharp increases in long range\ncontact by averaging surrounding\nvalues."
  type: boolean
  inputBinding:
    prefix: --despeckle
- id: in_dpi
  doc: 'Map resolution in DPI (dots per inch). [default: 300]'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_frags
  doc: "Required for bp binning. Tab-separated\nfile with headers, containing\nfragments\
    \ start position in the 3rd\ncolumn, as generated by hicstuff\npipeline."
  type: File
  inputBinding:
    prefix: --frags
- id: in_transform
  doc: "Apply a mathematical transformation to pixel values\nto improve visibility\
    \ of long range signals. Possible\nvalues are: log2, log10, ln, sqrt, exp0.2."
  type: double
  inputBinding:
    prefix: --transform
- id: in_max
  doc: "Saturation threshold. Maximum pixel\nvalue is set to this number. Can be\n\
    followed by % to use a percentile of\nnonzero pixels in the contact\nmap. [default:\
    \ 99%]"
  type: long
  inputBinding:
    prefix: --max
- id: in_min
  doc: "Minimum of the colorscale, works\nidentically to --max. [default: 0]"
  type: long
  inputBinding:
    prefix: --min
- id: in_n_mad
  doc: "Number of median absolute deviations (MAD) from the median\nof log bin sums\
    \ allowed to keep bins in the normalization\nprocedure [default: 3]."
  type: long
  inputBinding:
    prefix: --n-mad
- id: in_normalize
  doc: "Should ICE normalization be performed\nbefore rendering the matrix ?"
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_output
  doc: Name of the image file where the view is stored.
  type: File
  inputBinding:
    prefix: --output
- id: in_region
  doc: "[;STR]           Only view a region of the contact map.\nRegions are specified\
    \ as UCSC strings.\n(e.g.:chr1:1000-12000). If only one\nregion is given, it is\
    \ viewed on the\ndiagonal. If two regions are given,\nThe contacts between both\
    \ are shown."
  type: string
  inputBinding:
    prefix: --region
- id: in_trim
  doc: "Trims outlier rows/columns from the\nmatrix if the sum of their contacts\n\
    deviates from the mean by more than\nINT standard deviations.\n"
  type: long
  inputBinding:
    prefix: --trim
- id: in_contact_map
  doc: Sparse contact matrix in bg2, cool or graal format
  type: string
  inputBinding:
    position: 0
- id: in_contact_map_two
  doc: "Sparse contact matrix in bg2, cool or graal format,\nif given, the log ratio\
    \ of contact_map/contact_map2\nwill be shown."
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicstuff
- view