version 1.0

task RbcavityReceptorPrmFile {
  input {
    String? receptor
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
      ~{true="-was" false="" was} \
      ~{true="-ras" false="" ras} \
      ~{true="-dump-insight" false="" dump_insight} \
      ~{true="-viewer" false="" viewer} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{true="-site" false="" site} \
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
}