version 1.0

task SvtkVcfclusterFilelist {
  input {
    String? x
    String? f
    String? d
    String? r
    String s_vtk
    String vcf_cluster
  }
  command <<<
    svtk vcfcluster filelist \
      ~{s_vtk} \
      ~{vcf_cluster} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    x: ""
    f: ""
    d: ""
    r: ""
    s_vtk: ""
    vcf_cluster: ""
  }
  output {
    File out_stdout = stdout()
  }
}