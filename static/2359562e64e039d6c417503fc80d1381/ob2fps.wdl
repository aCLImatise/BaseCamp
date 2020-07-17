version 1.0

task Ob2fps {
  input {
    Boolean? fp_two
    Boolean? fp_three
    Boolean? fp_four
    Boolean? mac_cs
    Boolean? sub_struct
    Boolean? rdma_ccs_slash_two
    Boolean? rdma_ccs_slash_one
    String? id_tag
    String? in
    File? save_fingerprints_filename
    String? out
    String? errors
    File filenames
  }
  command <<<
    ob2fps \
      ~{filenames} \
      ~{true="--FP2" false="" fp_two} \
      ~{true="--FP3" false="" fp_three} \
      ~{true="--FP4" false="" fp_four} \
      ~{true="--MACCS" false="" mac_cs} \
      ~{true="--substruct" false="" sub_struct} \
      ~{true="--rdmaccs/2" false="" rdma_ccs_slash_two} \
      ~{true="--rdmaccs/1" false="" rdma_ccs_slash_one} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""}
  >>>
  parameter_meta {
    fp_two: "linear fragments up to 7 atoms"
    fp_three: "SMARTS patterns specified in the file patterns.txt"
    fp_four: "SMARTS patterns specified in the file SMARTS_InteLigand.txt"
    mac_cs: "Open Babel's implementation of the MACCS 166 keys"
    sub_struct: "generate ChemFP substructure fingerprints"
    rdma_ccs_slash_two: "166 bit RDKit/MACCS fingerprints (version 2)"
    rdma_ccs_slash_one: "use the version 1 definition for --rdmaccs"
    id_tag: "tag name containing the record id (SD files only)"
    in: "input structure format (default autodetects from the filename extension)"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output structure format (default guesses from output filename, or is 'fps')"
    errors: "how should structure parse errors be handled? (default=ignore)"
    filenames: "input structure files (default is stdin)"
  }
}