class: CommandLineTool
id: ../../../tgene.cwl
inputs:
- id: o
  doc: 'output to the specified directory; default: tgene_out'
  type: string
  inputBinding:
    prefix: --o
- id: oc
  doc: 'output to the specified directory; default: tgene_out'
  type: string
  inputBinding:
    prefix: --oc
- id: transcript_types
  doc: 'comma-separated list of types of transcript to use from annotation file; default:
    protein_coding,processed_transcript'
  type: string
  inputBinding:
    prefix: --transcript-types
- id: max_link_distances
  doc: 'comma-separated list (no spaces) of maximum distances between an RE and its
    target; default: 500000 Note: only one allowed if no histone/expression data given
    Note: there must be one distance for each histone name in <histones>'
  type: string
  inputBinding:
    prefix: --max-link-distances
- id: max_p_value
  doc: 'maximum p-value for including non-CT, non-CL links in output; default: 0.05'
  type: string
  inputBinding:
    prefix: --max-pvalue
- id: tissues
  doc: 'comma-separated list (no spaces) of tissue names that are the sources of the
    histone and expression data; default: None'
  type: string
  inputBinding:
    prefix: --tissues
- id: histone_root
  doc: "histone root directory; default: None Note: histone files must be in subfolders\
    \ '<hrd>/<t>' where <t> is one of the tissue names in <tissues>"
  type: string
  inputBinding:
    prefix: --histone-root
- id: histones
  doc: "comma-separated list (no spaces) of histone names; default: None Note: histone\
    \ file names must match '<hrd>/<t>/*<hname>*[broad|narrow]Peak' where <t> is one\
    \ of the tissue names in <tissues> and <hname> is one of the histone names listed\
    \ in <histones>"
  type: string
  inputBinding:
    prefix: --histones
- id: rna_source
  doc: '[Cage|LongPap]    type of expression data in expression files; default: None'
  type: boolean
  inputBinding:
    prefix: --rna-source
- id: expression_root
  doc: "expression root directory; default: None Note: expression files must be in\
    \ subfolders '<erd>/<t>' where <t> is one of the tissue names in <tissues>, and\
    \ have extension '.gtf'"
  type: string
  inputBinding:
    prefix: --expression-root
- id: use_gene_ids
  doc: "use the 'gene_id' field rather than 'transcript_id' field to associate expression\
    \ file and annotation file entries; default: use 'transcript_id' field"
  type: boolean
  inputBinding:
    prefix: --use-gene-ids
- id: lec_at
  doc: 'scale correlation if maximum expression of transcript < <lecat>; default:
    0'
  type: string
  inputBinding:
    prefix: --lecat
- id: no_closest_locus
  doc: don't include closest locus for all targets unless constraints are satisfied
  type: boolean
  inputBinding:
    prefix: --no-closest-locus
- id: no_closest_tss
  doc: don't include closest TSS (target transcript) for all loci unless constraints
    are satisfied
  type: boolean
  inputBinding:
    prefix: --no-closest-tss
- id: no_noise
  doc: do not add noise to expression and histone zeros
  type: boolean
  inputBinding:
    prefix: --no-noise
- id: seed
  doc: 'seed for random number generator for noise and null model default: 0'
  type: string
  inputBinding:
    prefix: --seed
- id: desc
  doc: plain text description of the job
  type: string
  inputBinding:
    prefix: --desc
- id: f_desc
  doc: file containing plain text description of the job
  type: File
  inputBinding:
    prefix: --fdesc
- id: verbosity
  doc: '|2|3|4|5          level of information messages output to terminal'
  type: string
  inputBinding:
    prefix: --verbosity
- id: locus_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tgene
