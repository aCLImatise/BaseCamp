version 1.0

task MsstitchFilterperco {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    Boolean? full_protein
    Boolean? de_ami_date
    String? fast_a
    Int? min_len
    String? dbfile
    Boolean? enforce_tryptic
    String? in_source_frag
  }
  command <<<
    msstitch filterperco \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{true="--fullprotein" false="" full_protein} \
      ~{true="--deamidate" false="" de_ami_date} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{true="--enforce-tryptic" false="" enforce_tryptic} \
      ~{if defined(in_source_frag) then ("--insourcefrag " +  '"' + in_source_frag + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    full_protein: "Store full protein sequences (at a minimum-match length) in the SQLite file rather than tryptic sequences"
    de_ami_date: "Filter against both normal peptides and deamidated peptides where a D->N transition has occurred."
    fast_a: "FASTA sequence database"
    min_len: "Minimum length of peptide to be included"
    dbfile: "Database lookup file"
    enforce_tryptic: "When filtering peptides against whole proteins, filter out peptides that match a whole protein but only if they are fully tryptic, i.e. the protein needs K,R 1 position upstream of the peptide, and the peptide C-terminal should also be K,R. Useful when discerning from pseudogenes"
    in_source_frag: "Apply filter against both intact peptides and those that match to the C-terminal part of a tryptic peptide from the database, resulting from in-source fragmentation, where some amino acids will be missing from the N-terminus. Specify the max number of amino acids that may be missing. Database should be built with this flag in order for the lookup to work, since sequences will be stored and looked up reversed"
  }
}