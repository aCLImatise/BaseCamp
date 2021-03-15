version 1.0

task MsstitchPsmtable {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    File? old_psms
    File? dbfile
    Boolean? ms_one_quant
    Boolean? isobaric
    Int? min_precursor_purity
    Boolean? unroll
    Int? spectra_col
    Boolean? add_bio_set
    Boolean? add_misc_leav
    Boolean? genes
    Boolean? protein_group
    String? fast_a
    Int? gene_field
    String? fast_a_delim
  }
  command <<<
    msstitch psmtable \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(old_psms) then ("--oldpsms " +  '"' + old_psms + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if (ms_one_quant) then "--ms1quant" else ""} \
      ~{if (isobaric) then "--isobaric" else ""} \
      ~{if defined(min_precursor_purity) then ("--min-precursor-purity " +  '"' + min_precursor_purity + '"') else ""} \
      ~{if (unroll) then "--unroll" else ""} \
      ~{if defined(spectra_col) then ("--spectracol " +  '"' + spectra_col + '"') else ""} \
      ~{if (add_bio_set) then "--addbioset" else ""} \
      ~{if (add_misc_leav) then "--addmiscleav" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (protein_group) then "--proteingroup" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gene_field) then ("--genefield " +  '"' + gene_field + '"') else ""} \
      ~{if defined(fast_a_delim) then ("--fastadelim " +  '"' + fast_a_delim + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    old_psms: "PSM table file containing previously analysed PSMs to\\nappend new PSM table to."
    dbfile: "Database lookup file"
    ms_one_quant: "Specifies to add precursor quant data from lookup DB\\nto output table"
    isobaric: "Specifies to add isobaric quant data from lookup DB to\\noutput table"
    min_precursor_purity: "Minimum purity of precursor required to output\\nisobaric quantification data, MS2 scans with purity\\nbelow this value will be assigned NA in isobaric\\nchannels"
    unroll: "PSM table from Mzid2TSV contains either one PSM per\\nline with all the proteins of that shared peptide on\\nthe same line (not unrolled, default), or one\\nPSM/protein match per line where each protein from\\nthat shared peptide gets its own line (unrolled)."
    spectra_col: "Column number in which spectra file names are, in case\\nsome framework has changed the file names. First\\ncolumn number is 1."
    add_bio_set: "Add biological setname from DB lookup to PSM table"
    add_misc_leav: "Add missed cleavages to PSM table"
    genes: "Specifies to add genes to PSM table"
    protein_group: "Specifies to add protein groups to PSM table"
    fast_a: "FASTA sequence database"
    gene_field: "Field nr (first=1) in FASTA that contains gene name\\nwhen using --fastadelim to parse the gene names"
    fast_a_delim: "Delimiter in FASTA header, used to parse gene names in\\ncase of non-ENSEMBL/Uniprot\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}