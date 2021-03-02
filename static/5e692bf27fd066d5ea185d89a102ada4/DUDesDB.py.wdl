version 1.0

task DUDesDBpy {
  input {
    Float? uses_gi_likegirefnc
    Boolean? reference_fasta_files
    Boolean? reference_d_taxid
    File? nodesdmp_file_ncbi
    File? namesdmp_file_ncbi
    String? output_prefix_dudesdb
    Int? _threads_default
    Boolean? show_programs_number
  }
  command <<<
    DUDesDB_py \
      ~{if defined(uses_gi_likegirefnc) then ("-m " +  '"' + uses_gi_likegirefnc + '"') else ""} \
      ~{if (reference_fasta_files) then "-f" else ""} \
      ~{if (reference_d_taxid) then "-g" else ""} \
      ~{if defined(nodesdmp_file_ncbi) then ("-n " +  '"' + nodesdmp_file_ncbi + '"') else ""} \
      ~{if defined(namesdmp_file_ncbi) then ("-a " +  '"' + namesdmp_file_ncbi + '"') else ""} \
      ~{if defined(output_prefix_dudesdb) then ("-o " +  '"' + output_prefix_dudesdb + '"') else ""} \
      ~{if defined(_threads_default) then ("-t " +  '"' + _threads_default + '"') else ""} \
      ~{if (show_programs_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uses_gi_likegirefnc: "'gi' uses the GI as the identifier (For headers like:\\n>gi|158333233|ref|NC_009925.1|) [NCBI is phasing out\\nsequence GI numbers in September 2016]. 'av' uses the\\naccession.version as the identifier (for headers like:\\n>NC_013791.2). Default: 'av'"
    reference_fasta_files: "[<fasta_files> [<fasta_files> ...]]\\nReference fasta file(s) for header extraction only,\\nplain or gzipped - the same file used to generate the\\nread mapping index. Each sequence header '>' should\\ncontain a identifier as defined in the reference mode."
    reference_d_taxid: "[<ref2tax_files> [<ref2tax_files> ...]]\\nreference id to taxid file(s):\\n'gi_taxid_nucl.dmp[.gz]' --> 'gi' mode,\\n'*.accession2taxid[.gz]' --> 'av' mode [from NCBI\\ntaxonomy database\\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    nodesdmp_file_ncbi: "nodes.dmp file [from NCBI taxonomy database\\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    namesdmp_file_ncbi: "names.dmp file [from NCBI taxonomy database\\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    output_prefix_dudesdb: "Output prefix. Default: dudesdb"
    _threads_default: "# of threads. Default: 1"
    show_programs_number: "show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}