class: CommandLineTool
id: metabat.cwl
inputs:
- id: i
  doc: '[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --outFile ] arg              Base file name and path for each bin. The default
    output is fasta format. Use -l option to output only contig names [Mandatory].'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: '[ --abdFile ] arg              A file having mean and variance of base coverage
    depth (tab delimited;  the first column should be contig names, and the first
    row will be  considered as the header and be skipped) [Optional].'
  type: boolean
  inputBinding:
    prefix: -a
- id: m
  doc: '[ --minContig ] arg (=2500)    Minimum size of a contig for binning (should
    be >=1500).'
  type: boolean
  inputBinding:
    prefix: -m
- id: maxp
  doc: (=95)                  Percentage of 'good' contigs considered for binning
    decided by connection among contigs. The greater, the more sensitive.
  type: string
  inputBinding:
    prefix: --maxP
- id: mins
  doc: (=60)                  Minimum score of a edge for binning (should be between
    1 and 99). The  greater, the more specific.
  type: string
  inputBinding:
    prefix: --minS
- id: max_edges
  doc: (=200)             Maximum number of edges per node. The greater, the more
    sensitive.
  type: string
  inputBinding:
    prefix: --maxEdges
- id: p_tnf
  doc: '(=0)                   TNF probability cutoff for building TNF graph. Use
    it to skip the  preparation step. (0: auto).'
  type: string
  inputBinding:
    prefix: --pTNF
- id: no_add
  doc: Turning off additional binning for lost or small contigs.
  type: boolean
  inputBinding:
    prefix: --noAdd
- id: cv_ext
  doc: When a coverage file without variance (from third party tools) is used  instead
    of abdFile from jgi_summarize_bam_contig_depths.
  type: boolean
  inputBinding:
    prefix: --cvExt
- id: x
  doc: '[ --minCV ] arg (=1)           Minimum mean coverage of a contig in each library
    for binning.'
  type: boolean
  inputBinding:
    prefix: -x
- id: min_cvs_um
  doc: (=1)               Minimum total effective mean coverage of a contig (sum of
    depth over  minCV) for binning.
  type: string
  inputBinding:
    prefix: --minCVSum
- id: s
  doc: '[ --minClsSize ] arg (=200000) Minimum size of a bin as the output.'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores).'
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: '[ --onlyLabel ]                Output only sequence labels as a list in a
    column without sequences.'
  type: boolean
  inputBinding:
    prefix: -l
- id: save_cls
  doc: Save cluster memberships as a matrix format
  type: boolean
  inputBinding:
    prefix: --saveCls
- id: unbinned
  doc: Generate [outFile].unbinned.fa file for unbinned contigs
  type: boolean
  inputBinding:
    prefix: --unbinned
- id: no_bin_out
  doc: No bin output. Usually combined with --saveCls to check only contig  memberships
  type: boolean
  inputBinding:
    prefix: --noBinOut
- id: seed
  doc: '(=0)                   For exact reproducibility. (0: use random seed)'
  type: string
  inputBinding:
    prefix: --seed
- id: d
  doc: '[ --debug ]                    Debug output'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: '[ --verbose ]                  Verbose output'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- metabat
