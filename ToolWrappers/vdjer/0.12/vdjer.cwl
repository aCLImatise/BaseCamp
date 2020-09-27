class: CommandLineTool
id: vdjer.cwl
inputs:
- id: in_in
  doc: "--chain <IGH|IGK|IGL>\n--ref-dir </path/to/vdjer/ref/dir>\n--mf <min node\
    \ frequency (default: 3)>\n--mq <min base quality (default: 90)>\n--mcs <min contig\
    \ score (default: -5)\n--t <threads (default: 1)\n--am <anchor mismatches (default:\
    \ 4)\n--miw <min window length between conserved amino acids>\n--maw <max window\
    \ length between conserved amino acids>\n--jc <conserved J amino acid (W|F)\n\
    --ws <window span (default: 486)\n--jext <J extension (default: 162)\n--vr <V\
    \ region locus (chr:start-stop)>\n--cr <C region locus>\n--ins <expected / median\
    \ insert length>\n--rf <read filter floor (default: 1)\n--k <kmer size (default:\
    \ 35)>\n--vk <vregion kmer size (default: 15)>\n--mrs <min source node homology\
    \ score (default: 30)\n--rs <read span distance (default: 35)>\n--ms <mate span\
    \ distance (default: 48)>\n--e0 <start position for contig filtering (default:\
    \ 52)>\n--e1 <stop position for contig filtering (default: 411)>\n--wo <window\
    \ overlap check size>\n"
  type: long
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vdjer
