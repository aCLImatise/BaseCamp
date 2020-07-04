version 1.0

task CompareMotifs.pl {
  input {
    Boolean? bits
    Boolean? rna
    Boolean? norev_opp
    String? reduced_motifs
    String? matrix
    Boolean? no_facts
    Boolean? dbview
    String? db_table
    Boolean? cpu
    Boolean? basic
    Boolean? seq_logo
    String motifs_file
    String output_directory
  }
  command <<<
    compareMotifs.pl \
      ~{motifs_file} \
      ~{output_directory} \
      ~{true="-bits" false="" bits} \
      ~{true="-rna" false="" rna} \
      ~{true="-norevopp" false="" norev_opp} \
      ~{if defined(reduced_motifs) then ("-reducedMotifs " +  '"' + reduced_motifs + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{true="-nofacts" false="" no_facts} \
      ~{true="-dbview" false="" dbview} \
      ~{if defined(db_table) then ("-dbTable " +  '"' + db_table + '"') else ""} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-basic" false="" basic} \
      ~{true="-seqlogo" false="" seq_logo}
  >>>
  parameter_meta {
    bits: "(scale logos to bit content, default present nucleotide percentage)"
    rna: "(output RNA motifs, use RNA motif/miRNA database for comparison)"
    norev_opp: "(do not check for matches on reverse strand)"
    reduced_motifs: "(will remove redundant motifs, output unique ones, and then quit)"
    matrix: "(will compute all pairwise similarity scores to matrix, then quit)"
    no_facts: "(leave out the humor)"
    dbview: "(internal option )"
    db_table: "(information to use in dbview, internal option)"
    cpu: "<#> (number of CPUs to use)"
    basic: "(don't compare to known motifs or print similar motifs)"
    seq_logo: "(revert to using seqlogo/weblogo/ghostscript, by default uses SVG now)"
    motifs_file: ""
    output_directory: ""
  }
}