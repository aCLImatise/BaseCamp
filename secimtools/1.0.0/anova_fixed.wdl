version 1.0

task AnovaFixed.py {
  input {
    String outOut
    String flagsFlags
    String figFig
    String fig2Fig2
  }
  command <<<
    anova_fixed.py \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""} \
      ~{if defined(figFig) then ("--fig " +  '"' + figFig + '"') else ""} \
      ~{if defined(fig2Fig2) then ("--fig2 " +  '"' + fig2Fig2 + '"') else ""}
  >>>
}