version 1.0

task Flatfiletojsonpl {
  input {
    File? bed
    String? track_label
    Boolean? key
    Directory? out
    String? track_type
    String? classname
    Boolean? url_template
    Boolean? no_sub_features
    String? arrowhead_class
    Boolean? sub_feature_classes
    Boolean? client_config
    Boolean? config
    Boolean? metadata
    File? type
    Boolean? name_attributes
    Int? ncl_chunk
    Boolean? compress
    Int? sort_mem
    String? thick_type
    String flat_file_to_json_do_tpl
    String required
    String optional
    Int gff_three_specific
    String bed_specific
  }
  command <<<
    flatfile_to_json_pl \
      ~{flat_file_to_json_do_tpl} \
      ~{required} \
      ~{optional} \
      ~{gff_three_specific} \
      ~{bed_specific} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(track_label) then ("--trackLabel " +  '"' + track_label + '"') else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(track_type) then ("--trackType " +  '"' + track_type + '"') else ""} \
      ~{if defined(classname) then ("--className " +  '"' + classname + '"') else ""} \
      ~{if (url_template) then "--urltemplate" else ""} \
      ~{if (no_sub_features) then "--noSubfeatures" else ""} \
      ~{if defined(arrowhead_class) then ("--arrowheadClass " +  '"' + arrowhead_class + '"') else ""} \
      ~{if (sub_feature_classes) then "--subfeatureClasses" else ""} \
      ~{if (client_config) then "--clientConfig" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (name_attributes) then "--nameAttributes" else ""} \
      ~{if defined(ncl_chunk) then ("--nclChunk " +  '"' + ncl_chunk + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(sort_mem) then ("--sortMem " +  '"' + sort_mem + '"') else ""} \
      ~{if defined(thick_type) then ("--thickType " +  '"' + thick_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Process a GFF3, BED, or GenBank file containing annotation data.\\nThis script does not support GFF version 2 or GTF (GFF 2.5) input.\\nGenBank input is limited to handling records for single genes."
    track_label: "Unique identifier for this track. Required."
    key: "'<text>'\\nHuman-readable track name."
    out: "Output directory to write to. Defaults to \\\"data/\\\"."
    track_type: "/View/Track/HTMLFeatures\\nOptional JavaScript class to use to display this track. For backward\\ncompatibility, this defaults to \\\"HTMLFeatures\\\".\\nUnless you have some reason to use HTMLFeatures tracks, though, it's\\nrecommended to set this to \\\"CanvasFeatures\\\" to use the newer\\ncanvas-based feature track type."
    classname: "CSS class for features. Defaults to \\\"feature\\\". Only used by\\nHTMLFeatures tracks."
    url_template: "\\\"http://example.com/idlookup?id={id}\\\"\\nTemplate for a URL to be visited when features are clicked on."
    no_sub_features: "Do not format subfeature data. Only include top-level features."
    arrowhead_class: "CSS class for arrowheads. Only used by HTMLFeatures tracks."
    sub_feature_classes: "'{ JSON-format subfeature class map }'\\nCSS classes for each subfeature type, in JSON syntax. Example:\\n--subfeatureClasses '{\\\"CDS\\\": \\\"transcript-CDS\\\", \\\"exon\\\": \\\"transcript-exon\\\"}'\\nOnly used by HTMLFeatures tracks."
    client_config: "'{ JSON-format style configuration for this track }'\\nExtra configuration for the client, in JSON syntax. Example:\\n--clientConfig '{\\\"featureCss\\\": \\\"background-color: #668; height: 8px;\\\", \\\"histScale\\\": 2}'\\nFor historical reasons, this is only merged into the \\\"style\\\" section\\nof the new track's configuration."
    config: "'{ JSON-format extra configuration for this track }'\\nAdditional top-level configuration for the client, in JSON syntax.\\nExample:\\n--config '{ \\\"glyph\\\": \\\"ProcessedTranscript\\\" }'\\nUnlike \\\"--clientConfig\\\", this is merged into the top level of the\\nnew track configuration."
    metadata: "'{ JSON metadata }'\\nMetadata about this track. Example:\\n--metadata '{\\\"description\\\": \\\"Genes from XYZ pipeline.\\\", \\\"category\\\": \\\"Transcripts\\\" }'"
    type: "Only process features of the given type. Can take either single type\\nnames, e.g. \\\"mRNA\\\", or type names qualified by \\\"source\\\" name, for\\nwhatever definition of \\\"source\\\" your data file might have. For\\nexample, \\\"mRNA:exonerate\\\" will filter for only mRNA features that\\nhave a source of \\\"exonerate\\\".\\nMultiple type names can be specified by separating the type names\\nwith commas, e.g. \\\"--type mRNA:exonerate,ncRNA\\\"."
    name_attributes: "\\\"name,alias,id\\\"\\nComma-separated list of feature attributes (a.k.a. tags) that should\\nbe treated as names for this features. Case insensitive. Defaults to\\n\\\"name,alias,id\\\"."
    ncl_chunk: "NCList chunk size; if you get \\\"json text or perl structure exceeds\\nmaximum nesting level\\\" errors, try setting this lower (default:\\n50,000)."
    compress: "Compress the output, making .jsonz (gzipped) JSON files. This can\\nsave a lot of disk space, but note that web servers require some\\nadditional configuration to serve these correctly."
    sort_mem: "Bytes of RAM to use for sorting features. Default 512MB.\\nThe JSON NCList generation has to sort the features by reference\\nsequence, start coordinate, and end coordinate. This is how much RAM\\nin bytes the sorting process is allowed to use."
    thick_type: "Correspond to \\\"<-thin_type\\\"> and \\\"<-thick_type\\\"> in\\nBio::FeatureIO::bed. Do \\\"<perldoc Bio::FeatureIO::bed\\\"> for details."
    flat_file_to_json_do_tpl: "\\\\n( --gff <GFF3 file> | --bed <BED file> | --gbk <GenBank file> )         \\\\n--trackLabel <track identifier>                                         \\\\n[ --trackType <JS Class> ]                                              \\\\n[ --out <output directory> ]                                            \\\\n[ --key <human-readable track name> ]                                   \\\\n[ --className <CSS class name for displaying features> ]                \\\\n[ --urltemplate \\\"http://example.com/idlookup?id={id}\\\" ]                 \\\\n[ --arrowheadClass <CSS class> ]                                        \\\\n[ --noSubfeatures ]                                                     \\\\n[ --subfeatureClasses '{ JSON-format subfeature class map }' ]          \\\\n[ --clientConfig '{ JSON-format style configuration for this track }' ] \\\\n[ --config '{ JSON-format extra configuration for this track }' ]       \\\\n[ --thinType <BAM -thin_type> ]                                         \\\\n[ --thicktype <BAM -thick_type>]                                        \\\\n[ --type <feature types to process> ]                                   \\\\n[ --nclChunk <chunk size for generated NCLs> ]                          \\\\n[ --compress ]                                                          \\\\n[ --sortMem <memory in bytes to use for sorting> ]                      \\\\n[ --maxLookback <maximum number of features to buffer in gff3 files> ]  \\\\n[ --nameAttributes \\\"name,alias,id\\\" ]                                    \\"
    required: "--gff <GFF3 file>"
    optional: "--help | -h | -?\\nDisplay an extended help screen."
    gff_three_specific: "--maxLookback <integer>\\nMaximum number of features to keep in memory when parsing GFF3\\nfiles. Defaults to 10000.\\nIf you receive \\\"orphan features\\\" errors when parsing a GFF3 file\\nthat doesn't contain enough '###' directives (which are important\\nfor parsing), you can try setting this higher if your machine has\\nenough memory."
    bed_specific: "--thinType <type>"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}