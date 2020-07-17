version 1.0

task GenblastG {
  input {
    Boolean? search_program_used
    Boolean? specifies_program_option
    Boolean? list_query_sequences
    Boolean? target_database_genomic
    Boolean? parameter_blast_evalue
    Boolean? parameter_blast_perform
    Boolean? parameter_filtering_tf
    Boolean? parameter_blast_set
    Boolean? parameter_genblast_optional
    Boolean? parameter_genblast_maximum
    Boolean? parameter_positive_optional
    Boolean? parameter_genblast_minimum
    Boolean? parameter_number_optional
    String? s_codon
    Boolean? parameter_genblastg_minimum_intron
    Boolean? parameter_genblastg_minimum_internal
    Boolean? parameter_genblastg_maximum
    Boolean? genblastg_region_version
    Boolean? parameter_region_optional
    Boolean? no_repair
    Boolean? re
    Boolean? rm
    Boolean? rl
    Boolean? rs
    Boolean? rd
    Boolean? output_filename_optional
    Boolean? gff
    Boolean? cdna
    Boolean? pro
    Boolean? id
    Boolean? turn_onscreen_output
    Boolean? pid
  }
  command <<<
    genblastG \
      ~{true="-P" false="" search_program_used} \
      ~{true="-p" false="" specifies_program_option} \
      ~{true="-q" false="" list_query_sequences} \
      ~{true="-t" false="" target_database_genomic} \
      ~{true="-e" false="" parameter_blast_evalue} \
      ~{true="-g" false="" parameter_blast_perform} \
      ~{true="-f" false="" parameter_filtering_tf} \
      ~{true="-W" false="" parameter_blast_set} \
      ~{true="-a" false="" parameter_genblast_optional} \
      ~{true="-d" false="" parameter_genblast_maximum} \
      ~{true="-r" false="" parameter_positive_optional} \
      ~{true="-c" false="" parameter_genblast_minimum} \
      ~{true="-s" false="" parameter_number_optional} \
      ~{if defined(s_codon) then ("-scodon " +  '"' + s_codon + '"') else ""} \
      ~{true="-i" false="" parameter_genblastg_minimum_intron} \
      ~{true="-x" false="" parameter_genblastg_minimum_internal} \
      ~{true="-n" false="" parameter_genblastg_maximum} \
      ~{true="-v" false="" genblastg_region_version} \
      ~{true="-j" false="" parameter_region_optional} \
      ~{true="-norepair" false="" no_repair} \
      ~{true="-re" false="" re} \
      ~{true="-rm" false="" rm} \
      ~{true="-rl" false="" rl} \
      ~{true="-rs" false="" rs} \
      ~{true="-rd" false="" rd} \
      ~{true="-o" false="" output_filename_optional} \
      ~{true="-gff" false="" gff} \
      ~{true="-cdna" false="" cdna} \
      ~{true="-pro" false="" pro} \
      ~{true="-id" false="" id} \
      ~{true="-b" false="" turn_onscreen_output} \
      ~{true="-pid" false="" pid}
  >>>
  parameter_meta {
    search_program_used: "Search program used to produce HSPs, can be either \"blast\" or \"wublast\", default is \"blast\", optional"
    specifies_program_option: "specifies the program option of genBlast: genblasta or genblastg"
    list_query_sequences: "List of query sequences to blast, must be in fasta format, required"
    target_database_genomic: "The target database of genomic sequences in fasta format, required"
    parameter_blast_evalue: "parameter for blast: The e-value, [default: 1e-2], optional"
    parameter_blast_perform: "parameter for blast: Perform gapped alignment (T/F)  [default: F], optional"
    parameter_filtering_tf: "parameter for blast: Perform filtering (T/F) [default: F], optional"
    parameter_blast_set: "parameter for blast: Set word size, 0 means using blast default [default: 0], optional"
    parameter_genblast_optional: "parameter for genBlast: weight of penalty for skipping HSPs, between 0 and 1 [default: 0.5], optional"
    parameter_genblast_maximum: "parameter for genBlast: maximum allowed distance between HSPs  within the same gene, a non-negative integer [default: 100000], optional"
    parameter_positive_optional: "parameter for genBlast: number of ranks in the output, a positive integer, optional"
    parameter_genblast_minimum: "parameter for genBlast: minimum percentage of query gene  coverage in the output, between 0 and 1 (e.g. for 50% gene coverage, use \"0.5\"), optional"
    parameter_number_optional: "parameter for genBlast: minimum score of the HSP group in  the output, a real number, optional"
    s_codon: "number of base pairs to search for start codon within the region of HSP             group (inside the first HSP). If not specified, default is 15."
    parameter_genblastg_minimum_intron: "parameter for genBlastG: minimum intron length, optional. If not specified, the default value is 15."
    parameter_genblastg_minimum_internal: "parameter for genBlastG: minimum internal exon length, optional. If not specified, default is 20."
    parameter_genblastg_maximum: "parameter for genBlastG: maximum number of splice sites per region, optional. If not specified, default is 20."
    genblastg_region_version: "genBlastG splice region algorithm version: 1 or 2. Optional. If not specified, default is 1"
    parameter_region_optional: "parameter for genBlastG splice region algorithm2: class threshold, optional. If not specified, default is 0."
    no_repair: "turn on the no-repair option of genBlastG"
    re: "parameter for genBlastG repair process: minimum length of missing query region for repairing head or tail exon, optional. If not specified, default is 1."
    rm: "parameter for genBlastG repair process: minimum length of missing query region for repairing internal exon, optional. If not specified, default is 6."
    rl: "parameter for genBlastG repair process: length of DNA region before first exon or after last exon for searching additional alignments for repairing exons, optional. If not specified, default is 1000."
    rs: "parameter for genBlastG repair process: minimum initial score of alignment to be considered further (similar to BLAST), optional. If not specified, default is 41."
    rd: "parameter for genBlastG repair process: max allowed score reduction in extending initial alignment (similar to BLAST), optional. If not specified, default is 16."
    output_filename_optional: "output filename, optional. If not specified, the output will be the same as the query filename with \".gblast\" extension."
    gff: "output options: turn on GFF output"
    cdna: "output options: turn on cDNA output"
    pro: "output options: output protein sequence of the predicted gene"
    id: "The GFF output user_id"
    turn_onscreen_output: "Turn on the verbose on-screen output"
    pid: "turn on final alignment PID computation (global alignment between predicted gene and query) in output."
  }
}