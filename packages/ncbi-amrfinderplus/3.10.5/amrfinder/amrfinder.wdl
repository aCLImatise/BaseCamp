version 1.0

task Amrfinder {
  input {
    Boolean? update
    Boolean? force_update
    File? protein
    File? nucleotide
    File? gff
    Boolean? p_gap
    Directory? database
    Float? ident_min
    Int? coverage_min
    String? organism
    Boolean? list_organisms
    Int? translation_table
    Boolean? plus
    Boolean? report_common
    File? mutation_all
    Directory? blast_bin
    Boolean? report_all_equal
    String? name
    File? write_output_stdout
    File? protein_output
    File? nucleotide_output
    File? nucleotide_flank_five_output
    Int? nucleotide_flank_five_size
    Boolean? quiet
    Boolean? g_pipe_org
    String? parm
    Int? threads
    Boolean? debug
    File? log
  }
  command <<<
    amrfinder \
      ~{if (update) then "--update" else ""} \
      ~{if (force_update) then "--force_update" else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(nucleotide) then ("--nucleotide " +  '"' + nucleotide + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (p_gap) then "--pgap" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(ident_min) then ("--ident_min " +  '"' + ident_min + '"') else ""} \
      ~{if defined(coverage_min) then ("--coverage_min " +  '"' + coverage_min + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if (list_organisms) then "--list_organisms" else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if (plus) then "--plus" else ""} \
      ~{if (report_common) then "--report_common" else ""} \
      ~{if defined(mutation_all) then ("--mutation_all " +  '"' + mutation_all + '"') else ""} \
      ~{if defined(blast_bin) then ("--blast_bin " +  '"' + blast_bin + '"') else ""} \
      ~{if (report_all_equal) then "--report_all_equal" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(write_output_stdout) then ("--output " +  '"' + write_output_stdout + '"') else ""} \
      ~{if defined(protein_output) then ("--protein_output " +  '"' + protein_output + '"') else ""} \
      ~{if defined(nucleotide_output) then ("--nucleotide_output " +  '"' + nucleotide_output + '"') else ""} \
      ~{if defined(nucleotide_flank_five_output) then ("--nucleotide_flank5_output " +  '"' + nucleotide_flank_five_output + '"') else ""} \
      ~{if defined(nucleotide_flank_five_size) then ("--nucleotide_flank5_size " +  '"' + nucleotide_flank_five_size + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (g_pipe_org) then "--gpipe_org" else ""} \
      ~{if defined(parm) then ("--parm " +  '"' + parm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0"
  }
  parameter_meta {
    update: "Update the AMRFinder database"
    force_update: "Force updating the AMRFinder database"
    protein: "Input protein FASTA file"
    nucleotide: "Input nucleotide FASTA file"
    gff: "GFF file for protein locations. Protein id should be in the attribute 'Name=<id>' (9th field) of the rows with type 'CDS' or 'gene' (3rd field)."
    p_gap: "Input files PROT_FASTA, NUC_FASTA and GFF_FILE are created by the NCBI PGAP"
    database: "Alternative directory with AMRFinder database. Default: $AMRFINDER_DB"
    ident_min: "Minimum proportion of identical amino acids in alignment for hit (0..1). -1 means use a curated threshold if it exists and 0.9 otherwise\\nDefault: -1"
    coverage_min: "Minimum coverage of the reference protein (0..1)\\nDefault: 0.5"
    organism: "Taxonomy group. To see all possible taxonomy groups use the --list_organisms flag"
    list_organisms: "Print the list of all possible taxonomy groups for mutations identification and exit"
    translation_table: "NCBI genetic code for translated BLAST\\nDefault: 11"
    plus: "Add the plus genes to the report"
    report_common: "Report proteins common to a taxonomy group"
    mutation_all: "File to report all mutations"
    blast_bin: "Directory for BLAST. Deafult: $BLAST_BIN"
    report_all_equal: "Report all equally-scoring BLAST and HMM matches"
    name: "Text to be added as the first column \\\"name\\\" to all rows of the report, for example it can be an assembly name"
    write_output_stdout: "Write output to OUTPUT_FILE instead of STDOUT"
    protein_output: "Output protein FASTA file of reported proteins"
    nucleotide_output: "Output nucleotide FASTA file of reported nucleotide sequences"
    nucleotide_flank_five_output: "Output nucleotide FASTA file of reported nucleotide sequences with 5' flanking sequences"
    nucleotide_flank_five_size: "5' flanking sequence size for NUC_FLANK5_FASTA_OUT\\nDefault: 0"
    quiet: "Suppress messages to STDERR"
    g_pipe_org: "NCBI internal GPipe organism names"
    parm: "amr_report parameters for testing: -nosame -noblast -skip_hmm_check -bed"
    threads: "Max. number of threads\\nDefault: 4"
    debug: "Integrity checks"
    log: "Error log file, appended, opened on application start"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_stdout = "${in_write_output_stdout}"
    File out_protein_output = "${in_protein_output}"
    File out_nucleotide_output = "${in_nucleotide_output}"
    File out_nucleotide_flank_five_output = "${in_nucleotide_flank_five_output}"
  }
}