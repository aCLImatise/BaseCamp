version 1.0

task Merge2Dbed.pl {
  input {
    Boolean? res
    Boolean? loop
    Boolean? tad
    File? prefix
  }
  command <<<
    merge2Dbed.pl \
      ~{true="-res" false="" res} \
      ~{true="-loop" false="" loop} \
      ~{true="-tad" false="" tad} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    res: "<#> (maximum distance between endpoints to merge, default: 15000) Usually for loops -res should be set to the window/superRes size, for TADs 2x window/superRes"
    loop: "(treat 2D bed input files as loops, default)"
    tad: "(treat 2D bed input files as TADs)"
    prefix: "(output venn diagram overlaps to separate files)"
  }
}