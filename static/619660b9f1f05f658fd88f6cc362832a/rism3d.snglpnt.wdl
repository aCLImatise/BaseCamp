version 1.0

task Rism3dsnglpnt {
  input {
    File? x_vv
    File? rst
    File? prm_top
    File? pdb
  }
  command <<<
    rism3d_snglpnt \
      ~{if defined(x_vv) then ("--xvv " +  '"' + x_vv + '"') else ""} \
      ~{if defined(rst) then ("--rst " +  '"' + rst + '"') else ""} \
      ~{if defined(prm_top) then ("--prmtop " +  '"' + prm_top + '"') else ""} \
      ~{if defined(pdb) then ("--pdb " +  '"' + pdb + '"') else ""}
  >>>
  parameter_meta {
    x_vv: "[--guv Guv_rootname]"
    rst: ""
    prm_top: ""
    pdb: ""
  }
  output {
    File out_stdout = stdout()
  }
}