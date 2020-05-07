version 1.0

task BedtoolsReldist {
  input {
    String detailDetail
  }
  command <<<
    bedtools reldist \
      ~{if defined(detailDetail) then ("-detail " +  '"' + detailDetail + '"') else ""}
  >>>
}