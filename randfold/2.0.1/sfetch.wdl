version 1.0

task Sfetch {
  input {
    Boolean? name_accession_number
    File? _sequence_seqfile
    String? instead_sequence_main
    String? rename_fragment_newname
    Int? _from_residue_n
    Int? _to_residue_n
    String? direct_output_outfile
    String? use_output_format
    Boolean? dsw
    Boolean? dpi_r
    Boolean? dem
    Boolean? dgb
    Boolean? dwp
    Boolean? do_wl
    File? in_format
    Boolean? options
    String fast_a
    String embl
    String pir
  }
  command <<<
    sfetch \
      ~{fast_a} \
      ~{embl} \
      ~{pir} \
      ~{if (name_accession_number) then "-a" else ""} \
      ~{if defined(_sequence_seqfile) then ("-d " +  '"' + _sequence_seqfile + '"') else ""} \
      ~{if defined(instead_sequence_main) then ("-D " +  '"' + instead_sequence_main + '"') else ""} \
      ~{if defined(rename_fragment_newname) then ("-r " +  '"' + rename_fragment_newname + '"') else ""} \
      ~{if defined(_from_residue_n) then ("-f " +  '"' + _from_residue_n + '"') else ""} \
      ~{if defined(_to_residue_n) then ("-t " +  '"' + _to_residue_n + '"') else ""} \
      ~{if defined(direct_output_outfile) then ("-o " +  '"' + direct_output_outfile + '"') else ""} \
      ~{if defined(use_output_format) then ("-F " +  '"' + use_output_format + '"') else ""} \
      ~{if (dsw) then "-Dsw" else ""} \
      ~{if (dpi_r) then "-Dpir" else ""} \
      ~{if (dem) then "-Dem" else ""} \
      ~{if (dgb) then "-Dgb" else ""} \
      ~{if (dwp) then "-Dwp" else ""} \
      ~{if (do_wl) then "-Dowl" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    name_accession_number: ": name is an accession number, not a key"
    _sequence_seqfile: ": get sequence from <seqfile>"
    instead_sequence_main: ": instead, get sequence from main database"
    rename_fragment_newname: ": rename the fragment <newname>"
    _from_residue_n: ": from which residue (1..N)"
    _to_residue_n: ": to which residue (1..N)"
    direct_output_outfile: ": direct output to <outfile>"
    use_output_format: ": use output format of <format>; see below for\\nlist. Default is original format of database."
    dsw: "$SWDIR   SwissProt"
    dpi_r: "$PIRDIR  PIR"
    dem: "$EMBLDIR EMBL"
    dgb: "$GBDIR   GenBank"
    dwp: "$WORMDIR WormPep"
    do_wl: "$OWLDIR  OWL"
    in_format: ": specify input sequence file format <s>"
    options: ""
    fast_a: "genbank"
    embl: "gcg"
    pir: "raw"
  }
  output {
    File out_stdout = stdout()
  }
}