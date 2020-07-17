version 1.0

task HalTreeNITurnover.py {
  input {
    String? conserved_bed_name
    String? root
    String hal
    String workdir
  }
  command <<<
    halTreeNITurnover.py \
      ~{hal} \
      ~{workdir} \
      ~{if defined(conserved_bed_name) then ("--conservedBedName " +  '"' + conserved_bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  parameter_meta {
    conserved_bed_name: "Name function for output bed files where genome name is specifed as %s (default: %%s_cons.bed)"
    root: "root (default: None)"
    hal: "input hal"
    workdir: "working dir for all bed files"
  }
}