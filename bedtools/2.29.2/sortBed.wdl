version 1.0

task SortBed {
  input {
    Boolean sizeSizeA
    Boolean sizedSized
    Boolean chrChrThenSizeA
    Boolean chrChrThenSized
    Boolean chrChrThenScoreA
    Boolean chrChrThenScored
    Boolean gG
    Boolean faFaIdx
    String headerHeader
  }
  command <<<
    sortBed \
      ~{true="-sizeA" false="" sizeSizeA} \
      ~{true="-sizeD" false="" sizedSized} \
      ~{true="-chrThenSizeA" false="" chrChrThenSizeA} \
      ~{true="-chrThenSizeD" false="" chrChrThenSized} \
      ~{true="-chrThenScoreA" false="" chrChrThenScoreA} \
      ~{true="-chrThenScoreD" false="" chrChrThenScored} \
      ~{true="-g" false="" gG} \
      ~{true="-faidx" false="" faFaIdx} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""}
  >>>
}