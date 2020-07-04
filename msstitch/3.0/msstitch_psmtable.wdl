version 1.0

task MsstitchPsmtable {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? dbfile
    Boolean? ms_one_quant
    Boolean? isobaric
    Boolean? unroll
    String? spectra_col
    Boolean? add_bio_set
    Boolean? add_misc_leav
    Boolean? genes
    Boolean? protein_group
    String? fast_a
    String? gene_field
    String? fast_a_delim
  }
  command <<<
    msstitch psmtable \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{true="--ms1quant" false="" ms_one_quant} \
      ~{true="--isobaric" false="" isobaric} \
      ~{true="--unroll" false="" unroll} \
      ~{if defined(spectra_col) then ("--spectracol " +  '"' + spectra_col + '"') else ""} \
      ~{true="--addbioset" false="" add_bio_set} \
      ~{true="--addmiscleav" false="" add_misc_leav} \
      ~{true="--genes" false="" genes} \
      ~{true="--proteingroup" false="" protein_group} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gene_field) then ("--genefield " +  '"' + gene_field + '"') else ""} \
      ~{if defined(fast_a_delim) then ("--fastadelim " +  '"' + fast_a_delim + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    dbfile: "Database lookup file"
    ms_one_quant: "Specifies to add precursor quant data from lookup DB to output table"
    isobaric: "Specifies to add isobaric quant data from lookup DB to output table"
    unroll: "PSM table from Mzid2TSV contains either one PSM per line with all the proteins of that shared peptide on the same line (not unrolled, default), or one PSM/protein match per line where each protein from that shared peptide gets its own line (unrolled)."
    spectra_col: "Column number in which spectra file names are, in case some framework has changed the file names. First column number is 1."
    add_bio_set: "Add biological setname from DB lookup to PSM table"
    add_misc_leav: "Add missed cleavages to PSM table"
    genes: "Specifies to add genes to PSM table"
    protein_group: "Specifies to add protein groups to PSM table"
    fast_a: "FASTA sequence database"
    gene_field: "Field nr (first=1) in FASTA that contains gene name when using --fastadelim to parse the gene names"
    fast_a_delim: "Delimiter in FASTA header, used to parse gene names in case of non-ENSEMBL/Uniprot"
  }
}