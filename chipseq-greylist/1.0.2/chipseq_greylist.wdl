version 1.0

task ChipseqGreylist {
  input {
    String? cut_off
    String? bootstraps
  }
  command <<<
    chipseq-greylist \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""}
  >>>
  parameter_meta {
    cut_off: ""
    bootstraps: ""
  }
}