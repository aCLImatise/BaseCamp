version 1.0

task DUDesDB.py {
  input {
    String? m
    Boolean? reference_fasta_files
    Boolean? g
    String? nodesdmp_file
    String? namesdmp_file
    String? output_prefix_default
    String? _threads_default
    Boolean? show_programs_version
  }
  command <<<
    DUDesDB.py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{true="-f" false="" reference_fasta_files} \
      ~{true="-g" false="" g} \
      ~{if defined(nodesdmp_file) then ("-n " +  '"' + nodesdmp_file + '"') else ""} \
      ~{if defined(namesdmp_file) then ("-a " +  '"' + namesdmp_file + '"') else ""} \
      ~{if defined(output_prefix_default) then ("-o " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(_threads_default) then ("-t " +  '"' + _threads_default + '"') else ""} \
      ~{true="-v" false="" show_programs_version}
  >>>
  parameter_meta {
    m: "'gi' uses the GI as the identifier (For headers like: >gi|158333233|ref|NC_009925.1|) [NCBI is phasing out sequence GI numbers in September 2016]. 'av' uses the accession.version as the identifier (for headers like: >NC_013791.2). Default: 'av'"
    reference_fasta_files: "[<fasta_files> [<fasta_files> ...]] Reference fasta file(s) for header extraction only, plain or gzipped - the same file used to generate the read mapping index. Each sequence header '>' should contain a identifier as defined in the reference mode."
    g: "[<ref2tax_files> [<ref2tax_files> ...]] reference id to taxid file(s): 'gi_taxid_nucl.dmp[.gz]' --> 'gi' mode, '*.accession2taxid[.gz]' --> 'av' mode [from NCBI taxonomy database ftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    nodesdmp_file: "nodes.dmp file [from NCBI taxonomy database ftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    namesdmp_file: "names.dmp file [from NCBI taxonomy database ftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
    output_prefix_default: "Output prefix. Default: dudesdb"
    _threads_default: "# of threads. Default: 1"
    show_programs_version: "show program's version number and exit"
  }
}