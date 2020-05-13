class: CommandLineTool
id: flatfile_to_json.pl.cwl
inputs:
- id: gbk
  doc: Process a GFF3, BED, or GenBank file containing annotation data. This script
    does not support GFF version 2 or GTF (GFF 2.5) input. GenBank input is limited
    to handling records for single genes.
  type: string
  inputBinding:
    prefix: --gbk
- id: track_label
  doc: Unique identifier for this track. Required.
  type: string
  inputBinding:
    prefix: --trackLabel
- id: sub_feature_classes
  doc: "'{\"CDS\": \"transcript-CDS\", \"exon\": \"transcript-exon\"}'"
  type: boolean
  inputBinding:
    prefix: --subfeatureClasses
- id: client_config
  doc: "'{\"featureCss\": \"background-color: #668; height: 8px;\", \"histScale\"\
    : 2}'"
  type: boolean
  inputBinding:
    prefix: --clientConfig
- id: config
  doc: "'{ \"glyph\": \"ProcessedTranscript\" }'"
  type: boolean
  inputBinding:
    prefix: --config
- id: ncl_chunk
  doc: 'NCList chunk size; if you get "json text or perl structure exceeds maximum
    nesting level" errors, try setting this lower (default: 50,000).'
  type: string
  inputBinding:
    prefix: --nclChunk
- id: compress
  doc: Compress the output, making .jsonz (gzipped) JSON files. This can save a lot
    of disk space, but note that web servers require some additional configuration
    to serve these correctly.
  type: boolean
  inputBinding:
    prefix: --compress
- id: sort_mem
  doc: Bytes of RAM to use for sorting features. Default 512MB. The JSON NCList generation
    has to sort the features by reference sequence, start coordinate, and end coordinate.
    This is how much RAM in bytes the sorting process is allowed to use.
  type: string
  inputBinding:
    prefix: --sortMem
- id: max_look_back
  doc: Maximum number of features to keep in memory when parsing GFF3 files. Defaults
    to 10000. If you receive "orphan features" errors when parsing a GFF3 file that
    doesn't contain enough '###' directives (which are important for parsing), you
    can try setting this higher if your machine has enough memory.
  type: long
  inputBinding:
    prefix: --maxLookback
- id: thick_type
  doc: Correspond to "<-thin_type"> and "<-thick_type"> in Bio::FeatureIO::bed. Do
    "<perldoc Bio::FeatureIO::bed"> for details.
  type: string
  inputBinding:
    prefix: --thickType
outputs: []
cwlVersion: v1.1
baseCommand:
- flatfile-to-json.pl
