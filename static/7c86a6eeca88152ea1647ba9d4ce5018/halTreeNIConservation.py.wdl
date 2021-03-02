version 1.0

task HalTreeNIConservationpy {
  input {
    String? background_bed_name
    String? mutations_bed_name
    String? conserved_bed_name
    String? root
    String? events
    Int? pval
    Float? cut_off
    String hal
    String workdir
  }
  command <<<
    halTreeNIConservation_py \
      ~{hal} \
      ~{workdir} \
      ~{if defined(background_bed_name) then ("--backgroundBedName " +  '"' + background_bed_name + '"') else ""} \
      ~{if defined(mutations_bed_name) then ("--mutationsBedName " +  '"' + mutations_bed_name + '"') else ""} \
      ~{if defined(conserved_bed_name) then ("--conservedBedName " +  '"' + conserved_bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(events) then ("--events " +  '"' + events + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    background_bed_name: "Name function for background bed files where genome\\nname is specified as %s. Computed using\\nhalTreeNIBackground (default: %%s_bg.bed)"
    mutations_bed_name: "Name function for background bed files where genome\\nname is specified as %s. Computed using\\nhalTreeMutations (default: %%s.bed)"
    conserved_bed_name: "Name function for output bed files where genome name\\nis specifed as %s (default: %%s_cons.bed)"
    root: "root (default: None)"
    events: "event tags. (default: I GI D DB GD GDB)"
    pval: "max pval of conserved segment (default: 0.05)"
    cut_off: "cut <cutoff>*mu^-1 off each side of interval. For\\nupper bounds use 0.5 and lower bounds 2.0 (default:\\n0.5)\\n"
    hal: "input hal"
    workdir: "working dir for all bed files"
  }
  output {
    File out_stdout = stdout()
  }
}