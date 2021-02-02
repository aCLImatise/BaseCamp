version 1.0

task RbcavityReceptorPrmFile {
  input {
    File? receptor
    Boolean? was
    Boolean? ras
    Boolean? dump_insight
    Boolean? viewer
    String? list
    Boolean? site
    String? border
    String rb_cavity
    String receptor_dot_prm
  }
  command <<<
    rbcavity ReceptorPrmFile \
      ~{rb_cavity} \
      ~{receptor_dot_prm} \
      ~{if defined(receptor) then ("-receptor " +  '"' + receptor + '"') else ""} \
      ~{if (was) then "-was" else ""} \
      ~{if (ras) then "-ras" else ""} \
      ~{if (dump_insight) then "-dump-insight" else ""} \
      ~{if (viewer) then "-viewer" else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if (site) then "-site" else ""} \
      ~{if defined(border) then ("-border " +  '"' + border + '"') else ""}
  >>>
  parameter_meta {
    receptor: "receptor file"
    was: "write active site"
    ras: "read active site"
    dump_insight: "dump InsightII/PyMol grids"
    viewer: "dump Viewer PSF/CRD files"
    list: "list receptor atoms within <dist>"
    site: "print site descriptors"
    border: "set the border around the cavities"
    rb_cavity: ""
    receptor_dot_prm: ""
  }
  output {
    File out_stdout = stdout()
  }
}