version 1.0

task MsstitchStoreseq {
  input {
    File? dbfile
    File? input_file_format
    File? output_file
    Boolean? full_protein
    Boolean? in_source_frag
    Boolean? cut_proline
    Int? min_len
    Boolean? no_trypsin
    Int? misc_leav
  }
  command <<<
    msstitch storeseq \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if (full_protein) then "--fullprotein" else ""} \
      ~{if (in_source_frag) then "--insourcefrag" else ""} \
      ~{if (cut_proline) then "--cutproline" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if (no_trypsin) then "--notrypsin" else ""} \
      ~{if defined(misc_leav) then ("--miscleav " +  '"' + misc_leav + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbfile: "Database lookup file"
    input_file_format: "Input file of {} format"
    output_file: "Output file"
    full_protein: "Store full protein sequences (at a minimum-match\\nlength) in the SQLite file rather than tryptic\\nsequences"
    in_source_frag: "Apply filter against both intact peptides and those\\nthat match to the C-terminal part of a tryptic peptide\\nfrom the database, resulting from in-source\\nfragmentation, where some amino acids will be missing\\nfrom the N-terminus. Specify the max number of amino\\nacids that may be missing. Database should be built\\nwith this flag in order for the lookup to work, since\\nsequences will be stored and looked up reversed"
    cut_proline: "Flag to make trypsin before a proline residue. Then\\nfiltering will be done against both cut and non-cut\\npeptides."
    min_len: "Minimum length of peptide to be included"
    no_trypsin: "Do not trypsinize. User is expected to deliver\\napretrypsinized FASTA file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing,\\ndefault is 0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}