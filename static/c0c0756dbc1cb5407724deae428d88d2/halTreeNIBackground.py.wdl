version 1.0

task HalTreeNIBackgroundpy {
  input {
    String? background_bed_name
    Boolean? ar
    Int? ar_extend
    Float? ar_extend_pct
    String? root
    String hal
    String workdir
  }
  command <<<
    halTreeNIBackground_py \
      ~{hal} \
      ~{workdir} \
      ~{if defined(background_bed_name) then ("--backgroundBedName " +  '"' + background_bed_name + '"') else ""} \
      ~{if (ar) then "--ar" else ""} \
      ~{if defined(ar_extend) then ("--arExtend " +  '"' + ar_extend + '"') else ""} \
      ~{if defined(ar_extend_pct) then ("--arExtendPct " +  '"' + ar_extend_pct + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    background_bed_name: "Name function for background bed files where genome\\nname is specified as %s. Computed using\\nhalTreeNIBackground (default: %%s_bg.bed)"
    ar: "Select only repeatmasked regions (default: False)"
    ar_extend: "Extend selected repeats by given number of bases\\n(default: 0)"
    ar_extend_pct: "Extend selected repeated regions by given percent\\n(default: 0.0)"
    root: "root (default: None)"
    hal: "input hal"
    workdir: "working dir for all bed files"
  }
  output {
    File out_stdout = stdout()
  }
}