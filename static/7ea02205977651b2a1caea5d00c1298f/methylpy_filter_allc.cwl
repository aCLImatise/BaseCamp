class: CommandLineTool
id: methylpy_filter_allc.cwl
inputs:
- id: in_all_c_files
  doc: 'allc files to filter. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: in_output_files
  doc: "Name of output files. Each output file matches each\nallc file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --output-files
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --num-procs
- id: in_mc_type
  doc: "List of space separated cytosine nucleotide contexts\nfor sites to be included\
    \ in output file. These\nclassifications may use the wildcards H (indicating\n\
    anything but a G) and N (indicating any nucleotide).\n(default: None)"
  type: File?
  inputBinding:
    prefix: --mc-type
- id: in_min_cov
  doc: "Minimum number of reads that must cover a site for it\nto be included in the\
    \ output file. (default: 0)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_max_cov
  doc: "Maximum number of reads that must cover a site for it\nto be included in the\
    \ output file. By default this\ncutoff is not applied. (default: None)"
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_max_mismatch
  doc: "Maximum numbers of mismatch basecalls allowed in each\nnucleotide in the sequence\
    \ context of a site for it to\nbe included in output file. If the sequence context\n\
    has three nucleotides, an example of this option is \"0\n1 2\". It requires no\
    \ mismatch basecall at the first\nnucleotide, at most one mismatch basecall at\
    \ the\nsecond nucleotide, and at most two at the third\nnucleotide for a site\
    \ to be reported. (default: None)"
  type: File?
  inputBinding:
    prefix: --max-mismatch
- id: in_max_mismatch_frac
  doc: "Maximum fraction of mismatch basecalls out of\nunambiguous basecalls allowed\
    \ in each nucleotide in\nthe sequence context of a site for it to be included\n\
    in output file. If the sequence context has three\nnucleotides, an example of\
    \ this option is \"0 0 0.1\".\nIt requires no mismatch basecall at the first and\n\
    second nucleotide, and at most 10% mismatches out of\nunambiguous basecalls at\
    \ the third nucleotide for a\nsite to be reported. (default: None)"
  type: File?
  inputBinding:
    prefix: --max-mismatch-frac
- id: in_compress_output
  doc: "Boolean indicating whether to compress (by gzip) the\nfinal output (default:\
    \ True)"
  type: boolean?
  inputBinding:
    prefix: --compress-output
- id: in_chrom_s
  doc: "Space separated listing of chromosomes to be included\nin the output. By default,\
    \ data of all chromosomes in\ninput allc file will be included. (default: None)\n"
  type: string[]
  inputBinding:
    prefix: --chroms
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_files
  doc: "Name of output files. Each output file matches each\nallc file. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_files)
- id: out_mc_type
  doc: "List of space separated cytosine nucleotide contexts\nfor sites to be included\
    \ in output file. These\nclassifications may use the wildcards H (indicating\n\
    anything but a G) and N (indicating any nucleotide).\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_mc_type)
- id: out_max_mismatch
  doc: "Maximum numbers of mismatch basecalls allowed in each\nnucleotide in the sequence\
    \ context of a site for it to\nbe included in output file. If the sequence context\n\
    has three nucleotides, an example of this option is \"0\n1 2\". It requires no\
    \ mismatch basecall at the first\nnucleotide, at most one mismatch basecall at\
    \ the\nsecond nucleotide, and at most two at the third\nnucleotide for a site\
    \ to be reported. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_max_mismatch)
- id: out_max_mismatch_frac
  doc: "Maximum fraction of mismatch basecalls out of\nunambiguous basecalls allowed\
    \ in each nucleotide in\nthe sequence context of a site for it to be included\n\
    in output file. If the sequence context has three\nnucleotides, an example of\
    \ this option is \"0 0 0.1\".\nIt requires no mismatch basecall at the first and\n\
    second nucleotide, and at most 10% mismatches out of\nunambiguous basecalls at\
    \ the third nucleotide for a\nsite to be reported. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_max_mismatch_frac)
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- filter-allc
