version 1.0

task Chipseqgreylist {
  input {
    String? bootstraps
    String? cut_off
  }
  command <<<
    chipseq_greylist \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""}
  >>>
  parameter_meta {
    bootstraps: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}