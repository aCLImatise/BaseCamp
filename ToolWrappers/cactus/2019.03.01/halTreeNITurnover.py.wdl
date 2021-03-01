version 1.0

task HalTreeNITurnoverpy {
  input {
    String? conserved_bed_name
    String? root
    String hal
    String workdir
  }
  command <<<
    halTreeNITurnover_py \
      ~{hal} \
      ~{workdir} \
      ~{if defined(conserved_bed_name) then ("--conservedBedName " +  '"' + conserved_bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    conserved_bed_name: "Name function for output bed files where genome name\\nis specifed as %s (default: %%s_cons.bed)"
    root: "root (default: None)"
    hal: "input hal"
    workdir: "working dir for all bed files"
  }
  output {
    File out_stdout = stdout()
  }
}