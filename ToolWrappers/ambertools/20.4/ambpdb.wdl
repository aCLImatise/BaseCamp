version 1.0

task Ambpdb {
  input {
    Boolean? topology_file_default
    Boolean? _coordinate_file
    Boolean? pqr
    Boolean? mol_two
    Boolean? print_version_information
    String? tit
    Boolean? a_atm
    Boolean? sy_by_l
    File? ac
    File? bc
    Boolean? conect
    Boolean? ep
    Boolean? bres
    Boolean? ctr
    Boolean? noter
    Boolean? ext
    Boolean? no_box
    Int? offset
  }
  command <<<
    ambpdb \
      ~{if (topology_file_default) then "-p" else ""} \
      ~{if (_coordinate_file) then "-c" else ""} \
      ~{if (pqr) then "-pqr" else ""} \
      ~{if (mol_two) then "-mol2" else ""} \
      ~{if (print_version_information) then "-v" else ""} \
      ~{if defined(tit) then ("-tit " +  '"' + tit + '"') else ""} \
      ~{if (a_atm) then "-aatm" else ""} \
      ~{if (sy_by_l) then "-sybyl" else ""} \
      ~{if defined(ac) then ("-ac " +  '"' + ac + '"') else ""} \
      ~{if defined(bc) then ("-bc " +  '"' + bc + '"') else ""} \
      ~{if (conect) then "-conect" else ""} \
      ~{if (ep) then "-ep" else ""} \
      ~{if (bres) then "-bres" else ""} \
      ~{if (ctr) then "-ctr" else ""} \
      ~{if (noter) then "-noter" else ""} \
      ~{if (ext) then "-ext" else ""} \
      ~{if (no_box) then "-nobox" else ""} \
      ~{if defined(offset) then ("-offset " +  '"' + offset + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    topology_file_default: "'Top'       Topology file (default: prmtop)."
    _coordinate_file: "'Coords'    Coordinate file."
    pqr: "PQR (MEAD) format with charges and radii."
    mol_two: "TRIPOS MOL2 format."
    print_version_information: "Print version information."
    tit: "Write a REMARK record containing TITLE.\\n(default: use prmtop title)"
    a_atm: "Left-justified Amber atom names."
    sy_by_l: "(MOL2 format only) Convert Amber atom types to SYBYL."
    ac: "(Implies '-sybyl') Atom type corresponding file (optional)."
    bc: "(Implies '-sybyl') Bond type corresponding file (optional)."
    conect: "Write CONECT records for all bonds."
    ep: "Include extra points if present."
    bres: "Brookhaven Residue names (HIE->HIS, etc.)."
    ctr: "Center molecule on (0,0,0)."
    noter: "Do not write TER records."
    ext: "Use PRMTOP extended PDB info, if present."
    no_box: "Do not write CRYST1 record if box coordinates present."
    offset: "Add offset to residue numbers."
  }
  output {
    File out_stdout = stdout()
  }
}