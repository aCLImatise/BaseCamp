version 1.0

task SvtkVcfclusterFout {
  input {
    String? r
    String? d
    String? f
    String? x
    String s_vtk
    String vcf_cluster
  }
  command <<<
    svtk vcfcluster fout \
      ~{s_vtk} \
      ~{vcf_cluster} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    d: ""
    f: ""
    x: ""
    s_vtk: ""
    vcf_cluster: ""
  }
}