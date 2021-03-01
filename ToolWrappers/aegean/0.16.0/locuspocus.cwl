class: CommandLineTool
id: locuspocus.cwl
inputs:
- id: in_debug
  doc: "print detailed debugging messages to terminal\n(standard error)"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_delta
  doc: ": INT        when parsing interval loci, use the following\ndelta to extend\
    \ gene loci and include potential\nregulatory regions; default is 500"
  type: boolean?
  inputBinding:
    prefix: --delta
- id: in_skip_ends
  doc: "when enumerating interval loci, exclude\nunannotated (and presumably incomplete)\
    \ iLoci at\neither end of the sequence"
  type: boolean?
  inputBinding:
    prefix: --skipends
- id: in_ends_only
  doc: "report only incomplete iLocus fragments at the\nunannotated ends of sequences\
    \ (complement of\n--skipends)"
  type: boolean?
  inputBinding:
    prefix: --endsonly
- id: in_skip_ii_loci
  doc: do not report intergenic iLoci
  type: boolean?
  inputBinding:
    prefix: --skipiiloci
- id: in_refine
  doc: "by default genes are grouped in the same iLocus\nif they have any overlap;\
    \ 'refine' mode allows\nfor a more nuanced handling of overlapping genes"
  type: boolean?
  inputBinding:
    prefix: --refine
- id: in_cds
  doc: "use CDS rather than UTRs for determining gene\noverlap; implies 'refine' mode"
  type: boolean?
  inputBinding:
    prefix: --cds
- id: in_min_overlap
  doc: ": INT   the minimum number of nucleotides two genes must\noverlap to be grouped\
    \ in the same iLocus; default\nis 1"
  type: boolean?
  inputBinding:
    prefix: --minoverlap
- id: in_name_fmt
  doc: ": STR     provide a printf-style format string to override\nthe default ID\
    \ format for newly created loci;\ndefault is 'locus%lu' (locus1, locus2, etc)\
    \ for\nloci and 'iLocus%lu' (iLocus1, iLocus2, etc) for\ninterval loci; note the\
    \ format string should\ninclude a single %lu specifier to be filled in\nwith a\
    \ long unsigned integer value"
  type: boolean?
  inputBinding:
    prefix: --namefmt
- id: in_i_lens
  doc: ': FILE       create a file with the lengths of each intergenic'
  type: boolean?
  inputBinding:
    prefix: --ilens
- id: in_outfile
  doc: ": FILE     name of file to which results will be written;\ndefault is terminal\
    \ (standard output)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_retain_ids
  doc: "retain original feature IDs from input files;\nconflicts will arise if input\
    \ contains duplicated\nID values"
  type: boolean?
  inputBinding:
    prefix: --retainids
- id: in_transmap
  doc: ": FILE    print a mapping from each transcript annotation\nto its corresponding\
    \ locus to the given file"
  type: boolean?
  inputBinding:
    prefix: --transmap
- id: in_verbose
  doc: "include all locus subfeatures (genes, RNAs, etc)\nin the GFF3 output; default\
    \ includes only locus\nfeatures"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_filter
  doc: ": TYPE      comma-separated list of feature types to use in\nconstructing\
    \ loci/iLoci; default is 'gene'"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_parent
  doc: ": CT:PT     if a feature of type $CT exists without a parent,\ncreate a parent\
    \ for this feature with type $PT;\nfor example, mRNA:gene will create a gene feature\n\
    as a parent for any top-level mRNA feature;\nthis option can be specified multiple\
    \ times"
  type: boolean?
  inputBinding:
    prefix: --parent
- id: in_pseudo
  doc: correct erroneously labeled pseudogenes
  type: boolean?
  inputBinding:
    prefix: --pseudo
- id: in_i_locus
  doc: '-g|--genemap: FILE     print a mapping from each gene annotation to its'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ": FILE     name of file to which results will be written;\ndefault is terminal\
    \ (standard output)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- locuspocus
