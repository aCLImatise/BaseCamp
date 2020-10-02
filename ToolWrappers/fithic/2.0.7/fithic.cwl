class: CommandLineTool
id: fithic.cwl
inputs:
- id: in_interactions
  doc: "REQUIRED: interactions between fragment pairs are read\nfrom INTERSFILE"
  type: File
  inputBinding:
    prefix: --interactions
- id: in_fragments
  doc: "REQUIRED: midpoints (or start indices) of the\nfragments are read from FRAGSFILE"
  type: File
  inputBinding:
    prefix: --fragments
- id: in_outdir
  doc: 'REQUIRED: where the output files will be written'
  type: string
  inputBinding:
    prefix: --outdir
- id: in_resolution
  doc: "REQUIRED: If the files are fixed size, please supply\nthe resolution of the\
    \ dataset here; otherwise, please\nuse a value of 0 if the data is not fixed size."
  type: long
  inputBinding:
    prefix: --resolution
- id: in_biases
  doc: "RECOMMENDED: biases calculated by ICE or KR norm for\neach locus are read\
    \ from BIASFILE"
  type: File
  inputBinding:
    prefix: --biases
- id: in_passes
  doc: 'OPTIONAL: number of spline passes to run Default is 1'
  type: long
  inputBinding:
    prefix: --passes
- id: in_no_of_bins
  doc: "OPTIONAL: number of equal-occupancy (count) bins.\nDefault is 100"
  type: long
  inputBinding:
    prefix: --noOfBins
- id: in_mapp_ability_th_res
  doc: "OPTIONAL: minimum number of hits per locus that has to\nexist to call it mappable.\
    \ DEFAULT is 1."
  type: long
  inputBinding:
    prefix: --mappabilityThres
- id: in_lib
  doc: "OPTIONAL: Name of the library that is analyzed to be\nused for name of file\
    \ prefixes . DEFAULT is fithic"
  type: File
  inputBinding:
    prefix: --lib
- id: in_upper_bound
  doc: "OPTIONAL: upper bound on the intra-chromosomal\ndistance range (unit: base\
    \ pairs). DEFAULT no limit.\nSTRONGLY suggested to have a limit for large genomes,\n\
    such as human/mouse. ex. '1000000, 5000000, etc.'"
  type: long
  inputBinding:
    prefix: --upperbound
- id: in_lower_bound
  doc: "OPTIONAL: lower bound on the intra-chromosomal\ndistance range (unit: base\
    \ pairs). DEFAULT no limit.\nSuggested limit is 2x the resolution of the input\n\
    files"
  type: long
  inputBinding:
    prefix: --lowerbound
- id: in_visual
  doc: "OPTIONAL: use this flag for generating plots. DEFAULT\nis False."
  type: boolean
  inputBinding:
    prefix: --visual
- id: in_contact_type
  doc: "OPTIONAL: use this flag to determine which chromosomal\nregions to study (intraOnly,\
    \ interOnly, All) DEFAULT\nis intraOnly"
  type: string
  inputBinding:
    prefix: --contactType
- id: in_bias_lower_bound
  doc: "OPTIONAL: this flag is used to determine the lower\nbound of bias values to\
    \ discard. DEFAULT is 0.5"
  type: double
  inputBinding:
    prefix: --biasLowerBound
- id: in_bias_upper_bound
  doc: "OPTIONAL: this flag is used to determine the upper\nbound of bias values to\
    \ discard. DEFAULT is 2"
  type: long
  inputBinding:
    prefix: --biasUpperBound
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fithic
