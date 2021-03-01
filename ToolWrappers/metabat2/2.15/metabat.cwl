class: CommandLineTool
id: metabat.cwl
inputs:
- id: in_i
  doc: '[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_base_file
  doc: "[ --outFile ] arg              Base file name and path for each bin. The default\
    \ output is fasta format.\nUse -l option to output only contig names [Mandatory]."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_file_having
  doc: "[ --abdFile ] arg              A file having mean and variance of base coverage\
    \ depth (tab delimited;\nthe first column should be contig names, and the first\
    \ row will be\nconsidered as the header and be skipped) [Optional]."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_minimum_size_contig
  doc: '[ --minContig ] arg (=2500)    Minimum size of a contig for binning (should
    be >=1500).'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maxp
  doc: "(=95)                  Percentage of 'good' contigs considered for binning\
    \ decided by connection\namong contigs. The greater, the more sensitive."
  type: long?
  inputBinding:
    prefix: --maxP
- id: in_mins
  doc: "(=60)                  Minimum score of a edge for binning (should be between\
    \ 1 and 99). The\ngreater, the more specific."
  type: long?
  inputBinding:
    prefix: --minS
- id: in_max_edges
  doc: (=200)             Maximum number of edges per node. The greater, the more
    sensitive.
  type: long?
  inputBinding:
    prefix: --maxEdges
- id: in_p_tnf
  doc: "(=0)                   TNF probability cutoff for building TNF graph. Use\
    \ it to skip the\npreparation step. (0: auto)."
  type: long?
  inputBinding:
    prefix: --pTNF
- id: in_no_add
  doc: Turning off additional binning for lost or small contigs.
  type: boolean?
  inputBinding:
    prefix: --noAdd
- id: in_cv_ext
  doc: "When a coverage file without variance (from third party tools) is used\ninstead\
    \ of abdFile from jgi_summarize_bam_contig_depths."
  type: boolean?
  inputBinding:
    prefix: --cvExt
- id: in_arg_mean_coverage
  doc: '[ --minCV ] arg (=1)           Minimum mean coverage of a contig in each library
    for binning.'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_min_cvs_um
  doc: "(=1)               Minimum total effective mean coverage of a contig (sum\
    \ of depth over\nminCV) for binning."
  type: long?
  inputBinding:
    prefix: --minCVSum
- id: in_arg_minimum_size_bin
  doc: '[ --minClsSize ] arg (=200000) Minimum size of a bin as the output.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_number_use
  doc: '[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores).'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_only_sequence
  doc: '[ --onlyLabel ]                Output only sequence labels as a list in a
    column without sequences.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_save_cls
  doc: Save cluster memberships as a matrix format
  type: boolean?
  inputBinding:
    prefix: --saveCls
- id: in_unbinned
  doc: Generate [outFile].unbinned.fa file for unbinned contigs
  type: boolean?
  inputBinding:
    prefix: --unbinned
- id: in_no_bin_out
  doc: No bin output. Usually combined with --saveCls to check only contig
  type: boolean?
  inputBinding:
    prefix: --noBinOut
- id: in__debug_output
  doc: '[ --debug ]                    Debug output'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__verbose_output
  doc: '[ --verbose ]                  Verbose output'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_memberships
  doc: '--seed arg (=0)                   For exact reproducibility. (0: use random
    seed)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_base_file
  doc: "[ --outFile ] arg              Base file name and path for each bin. The default\
    \ output is fasta format.\nUse -l option to output only contig names [Mandatory]."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_base_file)
hints: []
cwlVersion: v1.1
baseCommand:
- metabat
