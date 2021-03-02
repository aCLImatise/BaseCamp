version 1.0

task Showinf {
  input {
    Boolean? version
    Boolean? no_pix
    Boolean? no_core
    Boolean? no_meta
    Boolean? no_filter
    Boolean? thumbs
    Boolean? minmax
    Boolean? merge
    Boolean? nogroup
    Boolean? stitch
    Boolean? separate
    Boolean? expand
    Boolean? ome_xml
    Boolean? normalize
    Boolean? fast
    Boolean? debug
    Boolean? range
    Boolean? series
    Boolean? no_flat
    Boolean? resolution
    Boolean? swap
    Boolean? shuffle
    Boolean? specify_file_disk
    Boolean? preload
    Boolean? crop
    Boolean? autoscale
    Boolean? no_valid
    Boolean? ome_xml_only
    Boolean? no_upgrade
    Boolean? cache_dir
    Boolean? option
  }
  command <<<
    showinf \
      ~{if (version) then "-version" else ""} \
      ~{if (no_pix) then "-nopix" else ""} \
      ~{if (no_core) then "-nocore" else ""} \
      ~{if (no_meta) then "-nometa" else ""} \
      ~{if (no_filter) then "-nofilter" else ""} \
      ~{if (thumbs) then "-thumbs" else ""} \
      ~{if (minmax) then "-minmax" else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if (nogroup) then "-nogroup" else ""} \
      ~{if (stitch) then "-stitch" else ""} \
      ~{if (separate) then "-separate" else ""} \
      ~{if (expand) then "-expand" else ""} \
      ~{if (ome_xml) then "-omexml" else ""} \
      ~{if (normalize) then "-normalize" else ""} \
      ~{if (fast) then "-fast" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (range) then "-range" else ""} \
      ~{if (series) then "-series" else ""} \
      ~{if (no_flat) then "-noflat" else ""} \
      ~{if (resolution) then "-resolution" else ""} \
      ~{if (swap) then "-swap" else ""} \
      ~{if (shuffle) then "-shuffle" else ""} \
      ~{if (specify_file_disk) then "-map" else ""} \
      ~{if (preload) then "-preload" else ""} \
      ~{if (crop) then "-crop" else ""} \
      ~{if (autoscale) then "-autoscale" else ""} \
      ~{if (no_valid) then "-novalid" else ""} \
      ~{if (ome_xml_only) then "-omexml-only" else ""} \
      ~{if (no_upgrade) then "-no-upgrade" else ""} \
      ~{if (cache_dir) then "-cache-dir" else ""} \
      ~{if (option) then "-option" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version: ": print the library version and exit\\nfile: the image file to read"
    no_pix: ": read metadata only, not pixels"
    no_core: ": do not output core metadata"
    no_meta: ": do not parse format-specific metadata table"
    no_filter: ": do not filter metadata fields"
    thumbs: ": read thumbnails instead of normal pixels"
    minmax: ": compute min/max statistics"
    merge: ": combine separate channels into RGB image"
    nogroup: ": force multi-file datasets to be read as individual files"
    stitch: ": stitch files with similar names"
    separate: ": split RGB image into separate channels"
    expand: ": expand indexed color to RGB"
    ome_xml: ": populate OME-XML metadata"
    normalize: ": normalize floating point images (*)"
    fast: ": paint RGB images as quickly as possible (*)"
    debug: ": turn on debugging output"
    range: ": specify range of planes to read (inclusive)"
    series: ": specify which image series to read"
    no_flat: ": do not flatten subresolutions"
    resolution: ": used in combination with -noflat to specify which\\nsubresolution to read (for images with subresolutions)"
    swap: ": override the default input dimension order"
    shuffle: ": override the default output dimension order"
    specify_file_disk: ": specify file on disk to which name should be mapped"
    preload: ": pre-read entire file into a buffer; significantly\\nreduces the time required to read the images, but\\nrequires more memory"
    crop: ": crop images before displaying; argument is 'x,y,w,h'"
    autoscale: ": automatically adjust brightness and contrast (*)"
    no_valid: ": do not perform validation of OME-XML"
    ome_xml_only: ": only output the generated OME-XML\\n-no-sas: do not output OME-XML StructuredAnnotation elements"
    no_upgrade: ": do not perform the upgrade check\\n-format: read file with a particular reader (e.g., ZeissZVI)\\n-cache: cache the initialized reader"
    cache_dir: ": use the specified directory to store the cached\\ninitialized reader. If unspecified, the cached reader\\nwill be stored under the same folder as the image file"
    option: ": add the specified key/value pair to the reader's options list"
  }
  output {
    File out_stdout = stdout()
  }
}