version 1.0

task MsstitchFilterperco {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    Boolean? full_protein
    Boolean? de_ami_date
    String? fast_a
    Int? min_len
    File? dbfile
    Boolean? enforce_tryptic
    Int? in_source_frag
  }
  command <<<
    msstitch filterperco \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if (full_protein) then "--fullprotein" else ""} \
      ~{if (de_ami_date) then "--deamidate" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if (enforce_tryptic) then "--enforce-tryptic" else ""} \
      ~{if defined(in_source_frag) then ("--insourcefrag " +  '"' + in_source_frag + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    full_protein: "Store full protein sequences (at a minimum-match\\nlength) in the SQLite file rather than tryptic\\nsequences"
    de_ami_date: "Filter against both normal peptides and deamidated\\npeptides where a D->N transition has occurred."
    fast_a: "FASTA sequence database"
    min_len: "Minimum length of peptide to be included"
    dbfile: "Database lookup file"
    enforce_tryptic: "When filtering peptides against whole proteins, filter\\nout peptides that match a whole protein but only if\\nthey are fully tryptic, i.e. the protein needs K,R 1\\nposition upstream of the peptide, and the peptide\\nC-terminal should also be K,R. Useful when discerning\\nfrom pseudogenes"
    in_source_frag: "Apply filter against both intact peptides and those\\nthat match to the C-terminal part of a tryptic peptide\\nfrom the database, resulting from in-source\\nfragmentation, where some amino acids will be missing\\nfrom the N-terminus. Specify the max number of amino\\nacids that may be missing. Database should be built\\nwith this flag in order for the lookup to work, since\\nsequences will be stored and looked up reversed\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}