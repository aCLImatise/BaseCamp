version 1.0

task Varlookup {
  input {
    Int? distance
    File? a_file
    File? b_file
    String? cohort
    String? output_bedpe_write
  }
  command <<<
    varlookup \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(a_file) then ("--aFile " +  '"' + a_file + '"') else ""} \
      ~{if defined(b_file) then ("--bFile " +  '"' + b_file + '"') else ""} \
      ~{if defined(cohort) then ("--cohort " +  '"' + cohort + '"') else ""} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""}
  >>>
  parameter_meta {
    distance: "max separation distance (bp) of adjacent loci between bedpe files [50]"
    a_file: "Pruned merged bedpe (A file) or standard input (-a stdin). "
    b_file: "Pruned merged bedpe (B file) (-b stdin). For prunning use -- ClusterBedpe.py"
    cohort: "Cohort name to add information of matching variants (default:bFile)"
    output_bedpe_write: "Output BEDPE to write (default: stdout)"
  }
}