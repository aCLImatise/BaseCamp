version 1.0

task SvtoolsVarlookup {
  input {
    Int? distance
    String? a_file
    String? b_file
    String? cohort
    String? output_bedpe_write
  }
  command <<<
    svtools varlookup \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(a_file) then ("--aFile " +  '"' + a_file + '"') else ""} \
      ~{if defined(b_file) then ("--bFile " +  '"' + b_file + '"') else ""} \
      ~{if defined(cohort) then ("--cohort " +  '"' + cohort + '"') else ""} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""}
  >>>
  parameter_meta {
    distance: "max separation distance (bp) of adjacent loci between bedpe files [50]"
    a_file: "pruned, merged BEDPE (A file) or standard input (-a stdin)."
    b_file: "pruned merged BEDPE (B file) (-b stdin). For pruning use svtools prune"
    cohort: "cohort name to add information of matching variants (default:bFile)"
    output_bedpe_write: "output BEDPE to write (default: stdout)"
  }
}