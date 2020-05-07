version 1.0

task Gtf2bed.pl {
  input {
    String itemItemRgb
    Boolean includeIncludeStopInCds
    String? chr16Chr16
  }
  command <<<
    gtf2bed.pl \
      ~{chr16Chr16} \
      ~{if defined(itemItemRgb) then ("--itemRgb " +  '"' + itemItemRgb + '"') else ""} \
      ~{true="--includeStopInCDS" false="" includeIncludeStopInCds}
  >>>
}