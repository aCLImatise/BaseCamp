version 1.0

task SvtoolsBedpetobed12 {
  input {
    String? bedpe_input_file
    String? output_bed_write
    String? name
    Int? max_dist
    String? tempdir
  }
  command <<<
    svtools bedpetobed12 \
      ~{if defined(bedpe_input_file) then ("--input " +  '"' + bedpe_input_file + '"') else ""} \
      ~{if defined(output_bed_write) then ("--output " +  '"' + output_bed_write + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    bedpe_input_file: "BEDPE input file"
    output_bed_write: "Output BED12 to write (default: stdout)"
    name: "The name of the track. Default is 'BEDPE'"
    max_dist: "The minimum distance for drawing intrachromosomal features as if they are interchromosomal (i.e., without a line spanning the two footprints). Default is 1Mb."
    tempdir: "Directory for temp file downloads"
  }
}