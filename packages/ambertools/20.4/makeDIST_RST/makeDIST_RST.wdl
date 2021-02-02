version 1.0

task MakeDISTRST {
  input {
    File? up_b
    File? ual
    File? vol
    File? pdb
    File? map_file_defaultmapdgamber
    File? dgm
    File? rst
    File? rm_six
    File? svf
    Boolean? no_corr
    Boolean? a_ltd_is
    Boolean? report
    Boolean? i_mix
  }
  command <<<
    makeDIST_RST \
      ~{if defined(up_b) then ("-upb " +  '"' + up_b + '"') else ""} \
      ~{if defined(ual) then ("-ual " +  '"' + ual + '"') else ""} \
      ~{if defined(vol) then ("-vol " +  '"' + vol + '"') else ""} \
      ~{if defined(pdb) then ("-pdb " +  '"' + pdb + '"') else ""} \
      ~{if defined(map_file_defaultmapdgamber) then ("-map " +  '"' + map_file_defaultmapdgamber + '"') else ""} \
      ~{if defined(dgm) then ("-dgm " +  '"' + dgm + '"') else ""} \
      ~{if defined(rst) then ("-rst " +  '"' + rst + '"') else ""} \
      ~{if defined(rm_six) then ("-rm6 " +  '"' + rm_six + '"') else ""} \
      ~{if defined(svf) then ("-svf " +  '"' + svf + '"') else ""} \
      ~{if (no_corr) then "-nocorr" else ""} \
      ~{if (a_ltd_is) then "-altdis" else ""} \
      ~{if (report) then "-report" else ""} \
      ~{if (i_mix) then "-imix" else ""}
  >>>
  parameter_meta {
    up_b: ": 7-col_NOE (necessary) distance bound file, OR"
    ual: ": 8-col_UAL (necessary) upper/lower file, OR"
    vol: ": 7-col_VOL (necessary) VOLUME file, one or more volumes"
    pdb: ": PDBFILE using AMBER nomenclature and numbering"
    map_file_defaultmapdgamber: ": MAP file  (default:map.DG-AMBER)"
    dgm: ":  DGEOM95 restraint format"
    rst: ":  SANDER restraint format"
    rm_six: ":  DISGEO/NOEVIO format"
    svf: ":  Sander Volume Format"
    no_corr: "(do not correct upper bound for r**-6 averaging)"
    a_ltd_is: "(use alternative form for the distance restraints)"
    report: "(gives you short runtime diagnostic output)"
    i_mix: "(for -vol input, says which mixing time; default is 1)"
  }
  output {
    File out_stdout = stdout()
  }
}