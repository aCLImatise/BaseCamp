version 1.0

task BedIntersect {
  input {
    Boolean? b_score
    Boolean? tab
    Boolean? allow_start_equal_end
    String bed
    String columns
    String four
  }
  command <<<
    bedIntersect \
      ~{bed} \
      ~{columns} \
      ~{four} \
      ~{true="-bScore" false="" b_score} \
      ~{true="-tab" false="" tab} \
      ~{true="-allowStartEqualEnd" false="" allow_start_equal_end}
  >>>
  parameter_meta {
    b_score: "output score from b.bed (must be at least 5 field bed)"
    tab: "chop input at tabs not spaces"
    allow_start_equal_end: "Don't discard 0-length items of a or b (e.g. point insertions)"
    bed: ""
    columns: ""
    four: ""
  }
}