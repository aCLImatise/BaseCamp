version 1.0

task ChromosomerSimulator {
  input {
    Int? gap_size
    Int? unplaced
    File? prefix
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
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}