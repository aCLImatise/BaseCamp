class: CommandLineTool
id: flatfile_to_json.pl.cwl
inputs:
- id: in_bed
  doc: "Process a GFF3, BED, or GenBank file containing annotation data.\nThis script\
    \ does not support GFF version 2 or GTF (GFF 2.5) input.\nGenBank input is limited\
    \ to handling records for single genes."
  type: File?
  inputBinding:
    prefix: --bed
- id: in_track_label
  doc: Unique identifier for this track. Required.
  type: string?
  inputBinding:
    prefix: --trackLabel
- id: in_key
  doc: "'<text>'\nHuman-readable track name."
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_out
  doc: Output directory to write to. Defaults to "data/".
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_track_type
  doc: "/View/Track/HTMLFeatures\nOptional JavaScript class to use to display this\
    \ track. For backward\ncompatibility, this defaults to \"HTMLFeatures\".\nUnless\
    \ you have some reason to use HTMLFeatures tracks, though, it's\nrecommended to\
    \ set this to \"CanvasFeatures\" to use the newer\ncanvas-based feature track\
    \ type."
  type: string?
  inputBinding:
    prefix: --trackType
- id: in_classname
  doc: "CSS class for features. Defaults to \"feature\". Only used by\nHTMLFeatures\
    \ tracks."
  type: string?
  inputBinding:
    prefix: --className
- id: in_url_template
  doc: "\"http://example.com/idlookup?id={id}\"\nTemplate for a URL to be visited\
    \ when features are clicked on."
  type: boolean?
  inputBinding:
    prefix: --urltemplate
- id: in_no_sub_features
  doc: Do not format subfeature data. Only include top-level features.
  type: boolean?
  inputBinding:
    prefix: --noSubfeatures
- id: in_arrowhead_class
  doc: CSS class for arrowheads. Only used by HTMLFeatures tracks.
  type: string?
  inputBinding:
    prefix: --arrowheadClass
- id: in_sub_feature_classes
  doc: "'{ JSON-format subfeature class map }'\nCSS classes for each subfeature type,\
    \ in JSON syntax. Example:\n--subfeatureClasses '{\"CDS\": \"transcript-CDS\"\
    , \"exon\": \"transcript-exon\"}'\nOnly used by HTMLFeatures tracks."
  type: boolean?
  inputBinding:
    prefix: --subfeatureClasses
- id: in_client_config
  doc: "'{ JSON-format style configuration for this track }'\nExtra configuration\
    \ for the client, in JSON syntax. Example:\n--clientConfig '{\"featureCss\": \"\
    background-color: #668; height: 8px;\", \"histScale\": 2}'\nFor historical reasons,\
    \ this is only merged into the \"style\" section\nof the new track's configuration."
  type: boolean?
  inputBinding:
    prefix: --clientConfig
- id: in_config
  doc: "'{ JSON-format extra configuration for this track }'\nAdditional top-level\
    \ configuration for the client, in JSON syntax.\nExample:\n--config '{ \"glyph\"\
    : \"ProcessedTranscript\" }'\nUnlike \"--clientConfig\", this is merged into the\
    \ top level of the\nnew track configuration."
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_metadata
  doc: "'{ JSON metadata }'\nMetadata about this track. Example:\n--metadata '{\"\
    description\": \"Genes from XYZ pipeline.\", \"category\": \"Transcripts\" }'"
  type: boolean?
  inputBinding:
    prefix: --metadata
- id: in_type
  doc: "Only process features of the given type. Can take either single type\nnames,\
    \ e.g. \"mRNA\", or type names qualified by \"source\" name, for\nwhatever definition\
    \ of \"source\" your data file might have. For\nexample, \"mRNA:exonerate\" will\
    \ filter for only mRNA features that\nhave a source of \"exonerate\".\nMultiple\
    \ type names can be specified by separating the type names\nwith commas, e.g.\
    \ \"--type mRNA:exonerate,ncRNA\"."
  type: File?
  inputBinding:
    prefix: --type
- id: in_name_attributes
  doc: "\"name,alias,id\"\nComma-separated list of feature attributes (a.k.a. tags)\
    \ that should\nbe treated as names for this features. Case insensitive. Defaults\
    \ to\n\"name,alias,id\"."
  type: boolean?
  inputBinding:
    prefix: --nameAttributes
- id: in_ncl_chunk
  doc: "NCList chunk size; if you get \"json text or perl structure exceeds\nmaximum\
    \ nesting level\" errors, try setting this lower (default:\n50,000)."
  type: long?
  inputBinding:
    prefix: --nclChunk
- id: in_compress
  doc: "Compress the output, making .jsonz (gzipped) JSON files. This can\nsave a\
    \ lot of disk space, but note that web servers require some\nadditional configuration\
    \ to serve these correctly."
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_sort_mem
  doc: "Bytes of RAM to use for sorting features. Default 512MB.\nThe JSON NCList\
    \ generation has to sort the features by reference\nsequence, start coordinate,\
    \ and end coordinate. This is how much RAM\nin bytes the sorting process is allowed\
    \ to use."
  type: long?
  inputBinding:
    prefix: --sortMem
- id: in_thick_type
  doc: "Correspond to \"<-thin_type\"> and \"<-thick_type\"> in\nBio::FeatureIO::bed.\
    \ Do \"<perldoc Bio::FeatureIO::bed\"> for details."
  type: string?
  inputBinding:
    prefix: --thickType
- id: in_flat_file_to_json_do_tpl
  doc: "\\\n( --gff <GFF3 file> | --bed <BED file> | --gbk <GenBank file> )      \
    \   \\\n--trackLabel <track identifier>                                      \
    \   \\\n[ --trackType <JS Class> ]                                           \
    \   \\\n[ --out <output directory> ]                                         \
    \   \\\n[ --key <human-readable track name> ]                                \
    \   \\\n[ --className <CSS class name for displaying features> ]             \
    \   \\\n[ --urltemplate \"http://example.com/idlookup?id={id}\" ]            \
    \     \\\n[ --arrowheadClass <CSS class> ]                                   \
    \     \\\n[ --noSubfeatures ]                                                \
    \     \\\n[ --subfeatureClasses '{ JSON-format subfeature class map }' ]     \
    \     \\\n[ --clientConfig '{ JSON-format style configuration for this track }'\
    \ ] \\\n[ --config '{ JSON-format extra configuration for this track }' ]    \
    \   \\\n[ --thinType <BAM -thin_type> ]                                      \
    \   \\\n[ --thicktype <BAM -thick_type>]                                     \
    \   \\\n[ --type <feature types to process> ]                                \
    \   \\\n[ --nclChunk <chunk size for generated NCLs> ]                       \
    \   \\\n[ --compress ]                                                       \
    \   \\\n[ --sortMem <memory in bytes to use for sorting> ]                   \
    \   \\\n[ --maxLookback <maximum number of features to buffer in gff3 files> ]\
    \  \\\n[ --nameAttributes \"name,alias,id\" ]                                \
    \    \\"
  type: string
  inputBinding:
    position: 0
- id: in_required
  doc: --gff <GFF3 file>
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: "--help | -h | -?\nDisplay an extended help screen."
  type: string
  inputBinding:
    position: 1
- id: in_gff_three_specific
  doc: "--maxLookback <integer>\nMaximum number of features to keep in memory when\
    \ parsing GFF3\nfiles. Defaults to 10000.\nIf you receive \"orphan features\"\
    \ errors when parsing a GFF3 file\nthat doesn't contain enough '###' directives\
    \ (which are important\nfor parsing), you can try setting this higher if your\
    \ machine has\nenough memory."
  type: long
  inputBinding:
    position: 2
- id: in_bed_specific
  doc: --thinType <type>
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory to write to. Defaults to "data/".
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- flatfile-to-json.pl
