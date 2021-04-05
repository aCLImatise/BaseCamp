version 1.0

task Abacas131pl {
  input {
    Boolean? reference_sequence_single
    Boolean? contigs_multifasta_format
    Boolean? mummer_program_use
    Boolean? use_nucmerpromer_parameters
    Boolean? int_minimum_length
    Boolean? print_ordered_contigs
    Boolean? print_contigs_file
    Boolean? print_pseudomolecule_s
    Boolean? int_mimimum_percent
    Boolean? int_mimimum_contig
    Boolean? int_minimum_contig_coverage
    Boolean? int_minimum_contig_length
    Boolean? run_tblastx_contigs
    Boolean? string_file_name
    Boolean? append_contigs_bin
    Boolean? prefix_files_have
    Boolean? pick_primer_sets
    Boolean? int_number_flanking
    Boolean? int_run_mummer
    Boolean? escape_contig_ordering
    Boolean? reference_sequence_circular
  }
  command <<<
    abacas_1_3_1_pl \
      ~{if (reference_sequence_single) then "-r" else ""} \
      ~{if (contigs_multifasta_format) then "-q" else ""} \
      ~{if (mummer_program_use) then "-p" else ""} \
      ~{if (use_nucmerpromer_parameters) then "-d" else ""} \
      ~{if (int_minimum_length) then "-s" else ""} \
      ~{if (print_ordered_contigs) then "-m" else ""} \
      ~{if (print_contigs_file) then "-b" else ""} \
      ~{if (print_pseudomolecule_s) then "-N" else ""} \
      ~{if (int_mimimum_percent) then "-i" else ""} \
      ~{if (int_mimimum_contig) then "-v" else ""} \
      ~{if (int_minimum_contig_coverage) then "-V" else ""} \
      ~{if (int_minimum_contig_length) then "-l" else ""} \
      ~{if (run_tblastx_contigs) then "-t" else ""} \
      ~{if (string_file_name) then "-g" else ""} \
      ~{if (append_contigs_bin) then "-a" else ""} \
      ~{if (prefix_files_have) then "-o" else ""} \
      ~{if (pick_primer_sets) then "-P" else ""} \
      ~{if (int_number_flanking) then "-f" else ""} \
      ~{if (int_run_mummer) then "-R" else ""} \
      ~{if (escape_contig_ordering) then "-e" else ""} \
      ~{if (reference_sequence_circular) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abacas:1.3.1--pl526_0"
  }
  parameter_meta {
    reference_sequence_single: "reference sequence in a single fasta file"
    contigs_multifasta_format: "contigs in multi-fasta format"
    mummer_program_use: "MUMmer program to use: 'nucmer' or 'promer'"
    use_nucmerpromer_parameters: "use default nucmer/promer parameters"
    int_minimum_length: "int     minimum length of exact matching word (nucmer default = 12, promer default = 4)"
    print_ordered_contigs: "print ordered contigs to file in multifasta format"
    print_contigs_file: "print contigs in bin to file"
    print_pseudomolecule_s: "print a pseudomolecule without \\\"N\\\"s"
    int_mimimum_percent: "int     mimimum percent identity [default 40]"
    int_mimimum_contig: "int     mimimum contig coverage [default 40]"
    int_minimum_contig_coverage: "int     minimum contig coverage difference [default 1]"
    int_minimum_contig_length: "int     minimum contig length [default 1]"
    run_tblastx_contigs: "run tblastx on contigs that are not mapped"
    string_file_name: "string (file name)      print uncovered regions (gaps) on reference to file name"
    append_contigs_bin: "append contigs in bin to the pseudomolecule"
    prefix_files_have: "prefix  output files will have this prefix"
    pick_primer_sets: "pick primer sets to close gaps"
    int_number_flanking: "int     number of flanking bases on either side of a gap for primer design (default 350)"
    int_run_mummer: "int     Run mummer [default 1, use -R 0 to avoid running mummer]"
    escape_contig_ordering: "Escape contig ordering i.e. go to primer design"
    reference_sequence_circular: "Reference sequence is circular"
  }
  output {
    File out_stdout = stdout()
  }
}