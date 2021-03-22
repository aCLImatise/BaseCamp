version 1.0

task GuppyFilter {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? vr
    Boolean? ir
    Boolean? er
    Boolean? reference_package_path
    Boolean? cut_off
    Boolean? pp
    Boolean? vx
    Boolean? ix
    Boolean? ex
    Boolean? mass_gt
    Boolean? mass_le
    Boolean? help
    String filter
    String place_file
    String? s
  }
  command <<<
    guppy filter \
      ~{filter} \
      ~{place_file} \
      ~{s} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (vr) then "-Vr" else ""} \
      ~{if (ir) then "-Ir" else ""} \
      ~{if (er) then "-Er" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (vx) then "-Vx" else ""} \
      ~{if (ix) then "-Ix" else ""} \
      ~{if (ex) then "-Ex" else ""} \
      ~{if (mass_gt) then "--mass-gt" else ""} \
      ~{if (mass_le) then "--mass-le" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    vr: "Exclude every placement name by default (by default everything included)."
    ir: "Include placements whose name matches the given regexp. May be passed multiple times."
    er: "Exclude placements whose name matches the given regexp. May be passed multiple times."
    reference_package_path: "Reference package path."
    cut_off: "Use this cutoff for determining how likely a match is for a tax_id. Default: 0.9"
    pp: "Use posterior probability for our criteria."
    vx: "Exclude every tax_id by default (by default everything included)."
    ix: "Include placements which are likely matches for the given tax_id. May be passed multiple times."
    ex: "Exclude placements which are likely matches for the given tax_id. May be passed multiple times."
    mass_gt: "Include pqueries with a mass greater than the specified value."
    mass_le: "Include pqueries with a mass less than or equal to the specified value."
    help: "Display this list of options"
    filter: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}