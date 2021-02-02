class: CommandLineTool
id: findKnownMotifs.pl.cwl
inputs:
- id: in_tsv_sequence_fileg
  doc: "(tsv sequence file)\n-g <group file> (tsv group file)\n-o <output directory>\n\
    -m <motif file> (Known motif file, default: /usr/local/share/homer-4.11-2/.//data/knownTFs/known.motifs)\n\
    -strand <both|+|->\n-stat <hypergeo|binomial> (default: hypergeo)\n-pvalue <#>\
    \ (p-value cutoff, default: 0.01)\n-optimize (Optimize motif degeneracy thresholds\
    \ to maximize enrichment)\n-homer (use original homer, default, for now...)\n\
    -homer2 (use homer2)\n-p <#> (number of CPUs to use, homer2 only)\n-cache <#>\
    \ (size in MB of statistics cache, default: 500)\n-bits (scale logos by information\
    \ content)\n-dbview (internal option)\n-seqlogo (Use Weblogo/seqlogo/ghostscript,\
    \ by default now generates SVG logos)\n-rna (output RNA logos i.e. U instead of\
    \ T)\n"
  type: File
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: Directory
  inputBinding:
    prefix: -o
- id: in_g
  doc: ''
  type: File
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- findKnownMotifs.pl
