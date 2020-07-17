version 1.0

task Bfconvert {
  input {
    Boolean? version
    Boolean? no_upgrade
    Boolean? debug
    Boolean? stitch
    Boolean? separate
    Boolean? merge
    Boolean? expand
    Boolean? big_tiff
    Boolean? series
    Boolean? specify_file_mapped
    Boolean? range
    Boolean? nogroup
    Boolean? no_lookup
    Boolean? autoscale
    Boolean? overwrite
    Boolean? crop
    Boolean? channel
    Boolean? only_convert_section
    Boolean? time_point
    Boolean? padded
    Boolean? option
  }
  command <<<
    bfconvert \
      ~{true="-version" false="" version} \
      ~{true="-no-upgrade" false="" no_upgrade} \
      ~{true="-debug" false="" debug} \
      ~{true="-stitch" false="" stitch} \
      ~{true="-separate" false="" separate} \
      ~{true="-merge" false="" merge} \
      ~{true="-expand" false="" expand} \
      ~{true="-bigtiff" false="" big_tiff} \
      ~{true="-series" false="" series} \
      ~{true="-map" false="" specify_file_mapped} \
      ~{true="-range" false="" range} \
      ~{true="-nogroup" false="" nogroup} \
      ~{true="-nolookup" false="" no_lookup} \
      ~{true="-autoscale" false="" autoscale} \
      ~{true="-overwrite" false="" overwrite} \
      ~{true="-crop" false="" crop} \
      ~{true="-channel" false="" channel} \
      ~{true="-z" false="" only_convert_section} \
      ~{true="-timepoint" false="" time_point} \
      ~{true="-padded" false="" padded} \
      ~{true="-option" false="" option}
  >>>
  parameter_meta {
    version: ": print the library version and exit"
    no_upgrade: ": do not perform the upgrade check"
    debug: ": turn on debugging output"
    stitch: ": stitch input files with similar names"
    separate: ": split RGB images into separate channels"
    merge: ": combine separate channels into RGB image"
    expand: ": expand indexed color to RGB"
    big_tiff: ": force BigTIFF files to be written"
    series: ": specify which image series to convert"
    specify_file_mapped: ": specify file on disk to which name should be mapped"
    range: ": specify range of planes to convert (inclusive)"
    nogroup: ": force multi-file datasets to be read as individual              files"
    no_lookup: ": disable the conversion of lookup tables"
    autoscale: ": automatically adjust brightness and contrast before converting; this may mean that the original pixel values are not preserved"
    overwrite: ": always overwrite the output file, if it already exists"
    crop: ": crop images before converting; argument is 'x,y,w,h'"
    channel: ": only convert the specified channel (indexed from 0)"
    only_convert_section: ": only convert the specified Z section (indexed from 0)"
    time_point: ": only convert the specified timepoint (indexed from 0)"
    padded: ": filename indexes for series, z, c and t will be zero padded"
    option: ": add the specified key/value pair to the options list"
  }
}