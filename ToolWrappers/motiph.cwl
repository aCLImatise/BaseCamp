class: CommandLineTool
id: motiph.cwl
inputs:
- id: in_bg
  doc: "(default=1.0)\n--column-freqs simulated|empirical (default=simulated)\n--fg\
    \ <float> (default=1.0)\n--gap skip | fixed | wildcard | minimum (default=skip)\n\
    --gap-cost <float> (default=0.0)\n--hb (defalut false)\n--model bls|single|average|jc|k2|f81|f84|hky|tn\
    \ (default=f81)\n--pur-pyr <float> (default=1.0)\n--transition-transversion <float>\
    \ (default=0.5)\n--ustar <label>\n--motif <id> (default=all)\n--bfile <background>\
    \ (default from motif file)\n--list\n--no-qvalue (default false)\n--norc (default\
    \ false)\n--flip true|false (Allow BLS matches in reverse. Default: true)\n--bls-dist\
    \ <int> (Distance threshold for BLS. Default:20)\n--max-stored-scores (Default\
    \ 100,000)\n--o <output dir> (default=motiph_out)\n--oc <output dir> (default=motiph_out)\n\
    --print-col-freqs\n--print-trimmed-tree\n--pseudocount <float> (default=0.1)\n\
    --output-pthresh <float> (default 1e-4)\n--output-qthresh <float> (default 1.0)\n\
    --seed <long> (default from time())\n--text (default false)\n--verbosity [1|2|3|4]\
    \ (default 2)\n"
  type: double
  inputBinding:
    prefix: --bg
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_motif
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- motiph
