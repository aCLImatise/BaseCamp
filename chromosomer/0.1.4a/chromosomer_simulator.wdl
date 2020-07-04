version 1.0

task ChromosomerSimulator {
  input {
    String? gap_size
    String? unplaced
    String? prefix
  }
  command <<<
    chromosomer simulator \
      ~{if defined(gap_size) then ("--gap_size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(unplaced) then ("--unplaced " +  '"' + unplaced + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    gap_size: "the size of gaps between fragments on a chromosome"
    unplaced: "the number of unplaced fragments"
    prefix: "the prefix for output file names"
  }
}