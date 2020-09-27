version 1.0

task NefToRST {
  input {
    File? nef
    File? pdb
    File? _map_file
    File? rst
    File? rdc
    Boolean? no_corr
    Boolean? a_ltd_is
    Boolean? report
  }
  command <<<
    nef_to_RST \
      ~{if defined(nef) then ("-nef " +  '"' + nef + '"') else ""} \
      ~{if defined(pdb) then ("-pdb " +  '"' + pdb + '"') else ""} \
      ~{if defined(_map_file) then ("-map " +  '"' + _map_file + '"') else ""} \
      ~{if defined(rst) then ("-rst " +  '"' + rst + '"') else ""} \
      ~{if defined(rdc) then ("-rdc " +  '"' + rdc + '"') else ""} \
      ~{if (no_corr) then "-nocorr" else ""} \
      ~{if (a_ltd_is) then "-altdis" else ""} \
      ~{if (report) then "-report" else ""}
  >>>
  parameter_meta {
    nef: ": NEF file"
    pdb: ": PDBFILE using AMBER nomenclature and numbering"
    _map_file: ": MAP file  (default:map.NEF-AMBER)"
    rst: ":  SANDER DISANG format"
    rdc: ":  SANDER DIP format"
    no_corr: "(do not correct upper bound for r**-6 averaging)"
    a_ltd_is: "(use alternative form for the distance restraints)"
    report: "(gives you short runtime diagnostic output)"
  }
  output {
    File out_stdout = stdout()
  }
}