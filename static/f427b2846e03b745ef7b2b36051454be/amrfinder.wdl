version 1.0

task Amrfinder {
  input {
    Boolean? update
    String? protein
    String? nucleotide
    String? gff
    Boolean? p_gap
    String? database
    Int? ident_min
    Int? coverage_min
    String? organism
    Boolean? list_organisms
    String? translation_table
    Boolean? plus
    Boolean? report_common
    String? mutation_all
    String? blast_bin
    String? var_output
    Boolean? quiet
    Boolean? g_pipe_org
    String? parm
    String? threads
    Boolean? debug
    String? log
  }
  command <<<
    amrfinder \
      ~{true="--update" false="" update} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(nucleotide) then ("--nucleotide " +  '"' + nucleotide + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{true="--pgap" false="" p_gap} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(ident_min) then ("--ident_min " +  '"' + ident_min + '"') else ""} \
      ~{if defined(coverage_min) then ("--coverage_min " +  '"' + coverage_min + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{true="--list_organisms" false="" list_organisms} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{true="--plus" false="" plus} \
      ~{true="--report_common" false="" report_common} \
      ~{if defined(mutation_all) then ("--mutation_all " +  '"' + mutation_all + '"') else ""} \
      ~{if defined(blast_bin) then ("--blast_bin " +  '"' + blast_bin + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--gpipe_org" false="" g_pipe_org} \
      ~{if defined(parm) then ("--parm " +  '"' + parm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    update: ""
    protein: ""
    nucleotide: ""
    gff: ""
    p_gap: ""
    database: ""
    ident_min: ""
    coverage_min: ""
    organism: ""
    list_organisms: ""
    translation_table: ""
    plus: ""
    report_common: ""
    mutation_all: ""
    blast_bin: ""
    var_output: ""
    quiet: ""
    g_pipe_org: ""
    parm: ""
    threads: ""
    debug: ""
    log: ""
  }
}