version 1.0

task Pdb4amber {
  input {
    File? in
    File? out
    Boolean? no_hyd
    Boolean? dry
    String? strip
    String? mutate
    Boolean? prot
    Boolean? amber_compatible_residues
    Boolean? constant_ph
    Boolean? most_populous
    Boolean? keep_alt_locs
    Boolean? reduce
    Boolean? no_reduce_db
    Boolean? pdbid
    Boolean? add_missing_atoms
    Int? model
    File? log_file
    Boolean? leap_template
    Boolean? no_conect
    Boolean? noter
    String var_input
  }
  command <<<
    pdb4amber \
      ~{var_input} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_hyd) then "--nohyd" else ""} \
      ~{if (dry) then "--dry" else ""} \
      ~{if defined(strip) then ("--strip " +  '"' + strip + '"') else ""} \
      ~{if defined(mutate) then ("--mutate " +  '"' + mutate + '"') else ""} \
      ~{if (prot) then "--prot" else ""} \
      ~{if (amber_compatible_residues) then "--amber-compatible-residues" else ""} \
      ~{if (constant_ph) then "--constantph" else ""} \
      ~{if (most_populous) then "--most-populous" else ""} \
      ~{if (keep_alt_locs) then "--keep-altlocs" else ""} \
      ~{if (reduce) then "--reduce" else ""} \
      ~{if (no_reduce_db) then "--no-reduce-db" else ""} \
      ~{if (pdbid) then "--pdbid" else ""} \
      ~{if (add_missing_atoms) then "--add-missing-atoms" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (leap_template) then "--leap-template" else ""} \
      ~{if (no_conect) then "--no-conect" else ""} \
      ~{if (noter) then "--noter" else ""}
  >>>
  parameter_meta {
    in: "PDB input file (default: stdin)"
    out: "PDB output file (default: stdout)"
    no_hyd: "remove all hydrogen atoms (default: no)"
    dry: "remove all water molecules (default: no)"
    strip: "Strip given atom mask, (default: no)"
    mutate: "Mutate residue"
    prot: "keep only protein residues (default: no)"
    amber_compatible_residues: "keep only Amber-compatible residues (default: no)"
    constant_ph: "rename GLU,ASP,HIS for constant pH simulation"
    most_populous: "keep most populous alt. conf. (default is to keep 'A')"
    keep_alt_locs: "Keep alternative conformations"
    reduce: "Run Reduce first to add hydrogens. (default: no)"
    no_reduce_db: "If reduce is on, skip using it for hetatoms. (default:\\nusual reduce behavior for hetatoms)"
    pdbid: "fetch structure with given pdbid, should combined with"
    add_missing_atoms: "Use tleap to add missing atoms. (EXPERIMENTAL OPTION)"
    model: "Model to use from a multi-model pdb file (integer).\\n(default: use 1st model). Use a negative number to\\nkeep all models"
    log_file: "log filename"
    leap_template: "write a leap template for easy adaption (EXPERIMENTAL)"
    no_conect: "Not write S-S conect record"
    noter: "Not writing TER"
    var_input: "PDB input file (default: stdin)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}