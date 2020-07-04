version 1.0

task Bedpetobed12 {
  input {
    File? bed_pe
    String? name
    Int? max_dist
  }
  command <<<
    bedpetobed12 \
      ~{if defined(bed_pe) then ("--bedpe " +  '"' + bed_pe + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""}
  >>>
  parameter_meta {
    bed_pe: "BEDPE input file"
    name: "The name of the track.  Default is 'BEDPE'."
    max_dist: "The minimum distance for drawing intrachromosomal features as if they are interchromosomal (i.e., without a line spanning the two footprints). Default is 1Mb."
  }
}