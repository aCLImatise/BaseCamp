version 1.0

task MsstitchStoreseq {
  input {
    String? dbfile
    String? input_file_format
    String? output_file
    Boolean? full_protein
    Boolean? in_source_frag
    Boolean? cut_proline
    Int? min_len
    Boolean? no_trypsin
    String? misc_leav
  }
  command <<<
    msstitch storeseq \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{true="--fullprotein" false="" full_protein} \
      ~{true="--insourcefrag" false="" in_source_frag} \
      ~{true="--cutproline" false="" cut_proline} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{true="--notrypsin" false="" no_trypsin} \
      ~{if defined(misc_leav) then ("--miscleav " +  '"' + misc_leav + '"') else ""}
  >>>
  parameter_meta {
    dbfile: "Database lookup file"
    input_file_format: "Input file of {} format"
    output_file: "Output file"
    full_protein: "Store full protein sequences (at a minimum-match length) in the SQLite file rather than tryptic sequences"
    in_source_frag: "Apply filter against both intact peptides and those that match to the C-terminal part of a tryptic peptide from the database, resulting from in-source fragmentation, where some amino acids will be missing from the N-terminus. Specify the max number of amino acids that may be missing. Database should be built with this flag in order for the lookup to work, since sequences will be stored and looked up reversed"
    cut_proline: "Flag to make trypsin before a proline residue. Then filtering will be done against both cut and non-cut peptides."
    min_len: "Minimum length of peptide to be included"
    no_trypsin: "Do not trypsinize. User is expected to deliver apretrypsinized FASTA file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing, default is 0"
  }
}