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
    Boolean? compression
    Boolean? nogroup
    Boolean? autoscale
    File? overwrite
    File? no_overwrite
    Boolean? channel
    Boolean? time_point
    Int converted_z_zero_t_zero_dot_tiff
    Int converted_z_zero_t_two_dot_tiff
    Int converted_z_four_t_two_dot_tiff
  }
  command <<<
    bfconvert \
      ~{converted_z_zero_t_zero_dot_tiff} \
      ~{converted_z_zero_t_two_dot_tiff} \
      ~{converted_z_four_t_two_dot_tiff} \
      ~{if (version) then "-version" else ""} \
      ~{if (no_upgrade) then "-no-upgrade" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (stitch) then "-stitch" else ""} \
      ~{if (separate) then "-separate" else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if (expand) then "-expand" else ""} \
      ~{if (big_tiff) then "-bigtiff" else ""} \
      ~{if (compression) then "-compression" else ""} \
      ~{if (nogroup) then "-nogroup" else ""} \
      ~{if (autoscale) then "-autoscale" else ""} \
      ~{if (overwrite) then "-overwrite" else ""} \
      ~{if (no_overwrite) then "-nooverwrite" else ""} \
      ~{if (channel) then "-channel" else ""} \
      ~{if (time_point) then "-timepoint" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version: ": print the library version and exit"
    no_upgrade: ": do not perform the upgrade check"
    debug: ": turn on debugging output"
    stitch: ": stitch input files with similar names"
    separate: ": split RGB images into separate channels"
    merge: ": combine separate channels into RGB image"
    expand: ": expand indexed color to RGB"
    big_tiff: ": force BigTIFF files to be written"
    compression: ": specify the codec to use when saving images\\n-series: specify which image series to convert\\n-map: specify file on disk to which name should be mapped\\n-range: specify range of planes to convert (inclusive)"
    nogroup: ": force multi-file datasets to be read as individual              files\\n-nolookup: disable the conversion of lookup tables"
    autoscale: ": automatically adjust brightness and contrast before\\nconverting; this may mean that the original pixel\\nvalues are not preserved"
    overwrite: ": always overwrite the output file, if it already exists"
    no_overwrite: ": never overwrite the output file, if it already exists\\n-crop: crop images before converting; argument is 'x,y,w,h'"
    channel: ": only convert the specified channel (indexed from 0)\\n-z: only convert the specified Z section (indexed from 0)"
    time_point: ": only convert the specified timepoint (indexed from 0)\\n-padded: filename indexes for series, z, c and t will be zero padded\\n-option: add the specified key/value pair to the options list"
    converted_z_zero_t_zero_dot_tiff: "converted_Z0_T1.tiff"
    converted_z_zero_t_two_dot_tiff: "converted_Z1_T0.tiff"
    converted_z_four_t_two_dot_tiff: "Each file would have a single image plane."
  }
  output {
    File out_stdout = stdout()
    File out_overwrite = "${in_overwrite}"
    File out_no_overwrite = "${in_no_overwrite}"
  }
}