version 1.0

task Showinf {
  input {
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
    Boolean? specify_file_mapped
    Boolean? preload
    Boolean? crop
    Boolean? autoscale
    Boolean? no_valid
    Boolean? no_sas
    Boolean? no_upgrade
    Boolean? format
    Boolean? cache
    Boolean? cache_dir
    Boolean? option
  }
  command <<<
    showinf \
      ~{true="-nopix" false="" no_pix} \
      ~{true="-nocore" false="" no_core} \
      ~{true="-nometa" false="" no_meta} \
      ~{true="-nofilter" false="" no_filter} \
      ~{true="-thumbs" false="" thumbs} \
      ~{true="-minmax" false="" minmax} \
      ~{true="-merge" false="" merge} \
      ~{true="-nogroup" false="" nogroup} \
      ~{true="-stitch" false="" stitch} \
      ~{true="-separate" false="" separate} \
      ~{true="-expand" false="" expand} \
      ~{true="-omexml" false="" ome_xml} \
      ~{true="-normalize" false="" normalize} \
      ~{true="-fast" false="" fast} \
      ~{true="-debug" false="" debug} \
      ~{true="-range" false="" range} \
      ~{true="-series" false="" series} \
      ~{true="-noflat" false="" no_flat} \
      ~{true="-resolution" false="" resolution} \
      ~{true="-swap" false="" swap} \
      ~{true="-shuffle" false="" shuffle} \
      ~{true="-map" false="" specify_file_mapped} \
      ~{true="-preload" false="" preload} \
      ~{true="-crop" false="" crop} \
      ~{true="-autoscale" false="" autoscale} \
      ~{true="-novalid" false="" no_valid} \
      ~{true="-no-sas" false="" no_sas} \
      ~{true="-no-upgrade" false="" no_upgrade} \
      ~{true="-format" false="" format} \
      ~{true="-cache" false="" cache} \
      ~{true="-cache-dir" false="" cache_dir} \
      ~{true="-option" false="" option}
  >>>
  parameter_meta {
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
    resolution: ": used in combination with -noflat to specify which subresolution to read (for images with subresolutions)"
    swap: ": override the default input dimension order"
    shuffle: ": override the default output dimension order"
    specify_file_mapped: ": specify file on disk to which name should be mapped"
    preload: ": pre-read entire file into a buffer; significantly reduces the time required to read the images, but requires more memory"
    crop: ": crop images before displaying; argument is 'x,y,w,h'"
    autoscale: ": automatically adjust brightness and contrast (*)"
    no_valid: ": do not perform validation of OME-XML"
    no_sas: ": do not output OME-XML StructuredAnnotation elements"
    no_upgrade: ": do not perform the upgrade check"
    format: ": read file with a particular reader (e.g., ZeissZVI)"
    cache: ": cache the initialized reader"
    cache_dir: ": use the specified directory to store the cached initialized reader. If unspecified, the cached reader will be stored under the same folder as the image file"
    option: ": add the specified key/value pair to the reader's options list"
  }
}