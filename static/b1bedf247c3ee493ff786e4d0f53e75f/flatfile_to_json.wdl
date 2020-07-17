version 1.0

task FlatfileToJson.pl {
  input {
    String? gbk
    String? track_label
    Boolean? sub_feature_classes
    Boolean? client_config
    Boolean? config
    String? ncl_chunk
    Boolean? compress
    String? sort_mem
    Int? max_look_back
    String? thick_type
    String flat_file_to_json_do_tpl
  }
  command <<<
    flatfile-to-json.pl \
      ~{flat_file_to_json_do_tpl} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""} \
      ~{if defined(track_label) then ("--trackLabel " +  '"' + track_label + '"') else ""} \
      ~{true="--subfeatureClasses" false="" sub_feature_classes} \
      ~{true="--clientConfig" false="" client_config} \
      ~{true="--config" false="" config} \
      ~{if defined(ncl_chunk) then ("--nclChunk " +  '"' + ncl_chunk + '"') else ""} \
      ~{true="--compress" false="" compress} \
      ~{if defined(sort_mem) then ("--sortMem " +  '"' + sort_mem + '"') else ""} \
      ~{if defined(max_look_back) then ("--maxLookback " +  '"' + max_look_back + '"') else ""} \
      ~{if defined(thick_type) then ("--thickType " +  '"' + thick_type + '"') else ""}
  >>>
  parameter_meta {
    gbk: "Process a GFF3, BED, or GenBank file containing annotation data. This script does not support GFF version 2 or GTF (GFF 2.5) input. GenBank input is limited to handling records for single genes."
    track_label: "Unique identifier for this track. Required."
    sub_feature_classes: "'{\"CDS\": \"transcript-CDS\", \"exon\": \"transcript-exon\"}'"
    client_config: "'{\"featureCss\": \"background-color: #668; height: 8px;\", \"histScale\": 2}'"
    config: "'{ \"glyph\": \"ProcessedTranscript\" }'"
    ncl_chunk: "NCList chunk size; if you get \"json text or perl structure exceeds maximum nesting level\" errors, try setting this lower (default: 50,000)."
    compress: "Compress the output, making .jsonz (gzipped) JSON files. This can save a lot of disk space, but note that web servers require some additional configuration to serve these correctly."
    sort_mem: "Bytes of RAM to use for sorting features. Default 512MB. The JSON NCList generation has to sort the features by reference sequence, start coordinate, and end coordinate. This is how much RAM in bytes the sorting process is allowed to use."
    max_look_back: "Maximum number of features to keep in memory when parsing GFF3 files. Defaults to 10000. If you receive \"orphan features\" errors when parsing a GFF3 file that doesn't contain enough '###' directives (which are important for parsing), you can try setting this higher if your machine has enough memory."
    thick_type: "Correspond to \"<-thin_type\"> and \"<-thick_type\"> in Bio::FeatureIO::bed. Do \"<perldoc Bio::FeatureIO::bed\"> for details."
    flat_file_to_json_do_tpl: "( --gff <GFF3 file> | --bed <BED file> | --gbk <GenBank file> )         \ --trackLabel <track identifier>                                         \ [ --trackType <JS Class> ]                                              \ [ --out <output directory> ]                                            \ [ --key <human-readable track name> ]                                   \ [ --className <CSS class name for displaying features> ]                \ [ --urltemplate \"http://example.com/idlookup?id={id}\" ]                 \ [ --arrowheadClass <CSS class> ]                                        \ [ --noSubfeatures ]                                                     \ [ --subfeatureClasses '{ JSON-format subfeature class map }' ]          \ [ --clientConfig '{ JSON-format style configuration for this track }' ] \ [ --config '{ JSON-format extra configuration for this track }' ]       \ [ --thinType <BAM -thin_type> ]                                         \ [ --thicktype <BAM -thick_type>]                                        \ [ --type <feature types to process> ]                                   \ [ --nclChunk <chunk size for generated NCLs> ]                          \ [ --compress ]                                                          \ [ --sortMem <memory in bytes to use for sorting> ]                      \ [ --maxLookback <maximum number of features to buffer in gff3 files> ]  \ [ --nameAttributes \"name,alias,id\" ]                                    \"
  }
}