version 1.0

task FaCount {
  input {
    Boolean summarySummary
    Boolean dinDinUc
    Boolean strandsStrands
  }
  command <<<
    faCount \
      ~{true="-summary" false="" summarySummary} \
      ~{true="-dinuc" false="" dinDinUc} \
      ~{true="-strands" false="" strandsStrands}
  >>>
}