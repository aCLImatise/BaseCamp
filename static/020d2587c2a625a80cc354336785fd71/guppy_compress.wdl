version 1.0

task GuppyCompress {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? cut_off
    Boolean? discard_below
    Boolean? mcl
    Boolean? inflation
    Boolean? help
    String compress
    String place_file
  }
  command <<<
    guppy compress \
      ~{compress} \
      ~{place_file} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (discard_below) then "--discard-below" else ""} \
      ~{if (mcl) then "--mcl" else ""} \
      ~{if (inflation) then "--inflation" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    cut_off: "The cutoff parameter for mass compression"
    discard_below: "In island clustering, ignore pquery locations with a mass less than the specified value."
    mcl: "Use MCL clustering instead of island clustering."
    inflation: "If specified, pass this as the inflation value to MCL."
    help: "Display this list of options"
    compress: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}