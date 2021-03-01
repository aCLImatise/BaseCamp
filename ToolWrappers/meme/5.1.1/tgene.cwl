class: CommandLineTool
id: tgene.cwl
inputs:
- id: in_o
  doc: 'output to the specified directory; default: tgene_out'
  type: Directory?
  inputBinding:
    prefix: --o
- id: in_oc
  doc: 'output to the specified directory; default: tgene_out'
  type: Directory?
  inputBinding:
    prefix: --oc
- id: in_transcript_types
  doc: "comma-separated list of types of transcript to use from annotation file;\n\
    default: protein_coding,processed_transcript"
  type: File?
  inputBinding:
    prefix: --transcript-types
- id: in_max_link_distances
  doc: "comma-separated list (no spaces) of maximum distances\nbetween an RE and its\
    \ target; default: 500000\nNote: only one allowed if no histone/expression data\
    \ given\nNote: there must be one distance for each histone name in <histones>"
  type: long?
  inputBinding:
    prefix: --max-link-distances
- id: in_max_p_value
  doc: "maximum p-value for including non-CT, non-CL links in output;\ndefault: 0.05"
  type: long?
  inputBinding:
    prefix: --max-pvalue
- id: in_tissues
  doc: "comma-separated list (no spaces) of tissue names that are the\nsources of\
    \ the histone and expression data; default: None"
  type: string?
  inputBinding:
    prefix: --tissues
- id: in_histone_root
  doc: "histone root directory; default: None\nNote: histone files must be in subfolders\
    \ '<hrd>/<t>'\nwhere <t> is one of the tissue names in <tissues>"
  type: Directory?
  inputBinding:
    prefix: --histone-root
- id: in_histones
  doc: "comma-separated list (no spaces) of histone names; default: None\nNote: histone\
    \ file names must match '<hrd>/<t>/*<hname>*[broad|narrow]Peak'\nwhere <t> is\
    \ one of the tissue names in <tissues>\nand <hname> is one of the histone names\
    \ listed in <histones>"
  type: File?
  inputBinding:
    prefix: --histones
- id: in_rna_source
  doc: '[Cage|LongPap]    type of expression data in expression files; default: None'
  type: boolean?
  inputBinding:
    prefix: --rna-source
- id: in_expression_root
  doc: "expression root directory; default: None\nNote: expression files must be in\
    \ subfolders '<erd>/<t>'\nwhere <t> is one of the tissue names in <tissues>, and\
    \ have\nextension '.gtf'"
  type: Directory?
  inputBinding:
    prefix: --expression-root
- id: in_use_gene_ids
  doc: "use the 'gene_id' field rather than 'transcript_id' field\nto associate expression\
    \ file and annotation file entries;\ndefault: use 'transcript_id' field"
  type: boolean?
  inputBinding:
    prefix: --use-gene-ids
- id: in_lec_at
  doc: "scale correlation if maximum expression of transcript < <lecat>;\ndefault:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --lecat
- id: in_no_closest_locus
  doc: "don't include closest locus for all targets\nunless constraints are satisfied"
  type: boolean?
  inputBinding:
    prefix: --no-closest-locus
- id: in_no_closest_tss
  doc: "don't include closest TSS (target transcript) for all loci\nunless constraints\
    \ are satisfied"
  type: boolean?
  inputBinding:
    prefix: --no-closest-tss
- id: in_no_noise
  doc: do not add noise to expression and histone zeros
  type: boolean?
  inputBinding:
    prefix: --no-noise
- id: in_seed
  doc: "seed for random number generator for noise and null model\ndefault: 0"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_desc
  doc: plain text description of the job
  type: string?
  inputBinding:
    prefix: --desc
- id: in_f_desc
  doc: file containing plain text description of the job
  type: File?
  inputBinding:
    prefix: --fdesc
- id: in_verbosity
  doc: '|2|3|4|5          level of information messages output to terminal'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_locus_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotation_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: 'output to the specified directory; default: tgene_out'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_o)
- id: out_oc
  doc: 'output to the specified directory; default: tgene_out'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_oc)
hints: []
cwlVersion: v1.1
baseCommand:
- tgene
