version 1.0

task SraX {
  input {
    Boolean? output_directory_store
    Boolean? seqal_preferred_algorithm
    Boolean? msa_preferred_algorithm
    Boolean? eval_minimum_evalue
    Boolean? id
    Boolean? minimum_length_query
    Boolean? db
    Boolean? customary_amr_db
    Boolean? threads_number_running
    Boolean? version_displays_version
    Boolean? debug_verbose_output
    Boolean? i
  }
  command <<<
    sraX \
      ~{true="-o" false="" output_directory_store} \
      ~{true="-s" false="" seqal_preferred_algorithm} \
      ~{true="-a" false="" msa_preferred_algorithm} \
      ~{true="-e" false="" eval_minimum_evalue} \
      ~{true="-id" false="" id} \
      ~{true="-c" false="" minimum_length_query} \
      ~{true="-db" false="" db} \
      ~{true="-u" false="" customary_amr_db} \
      ~{true="-t" false="" threads_number_running} \
      ~{true="-v" false="" version_displays_version} \
      ~{true="-d" false="" debug_verbose_output} \
      ~{true="-i" false="" i}
  >>>
  parameter_meta {
    output_directory_store: "|output     Directory to store obtained results [/path/to/output_dir]. While not provided, the following default name will be taken: 'input_directory'_'sraX'_'id'_'aln_cov'_'seqal' Example: -------- Input directory: 'Test' Options: -id 85; -c 95; -p dblastx Output directory: 'Test_sraX_85_95_dblastx'"
    seqal_preferred_algorithm: "|seqal      The preferred algorithm for aligning the assembled genome(s) to a locally compiled AMR DB. The possible choices are: 'dblastx' (DIAMOND blastx) or 'blastx' (NCBI blastx). In any case, the process is parallelized (up to 100 genome files are run simultaneously) for reducing computing times. [string] Default: dblastx"
    msa_preferred_algorithm: "|msa        The preferred algorithm for producing the alignment of clustered homologous sequences (multiple-sequence files). The possible choices are: 'muscle', 'clustalo' or 'mafft'. [string] Default: muscle Note: The accuracy and computing times are both dependent on the selected algorithm."
    eval_minimum_evalue: "|eval       Minimum evalue cut-off to filter false positives. [number] Default: 1e-05"
    id: "Minimum identity cut-off to filter false positives. [number] Default: 85"
    minimum_length_query: "|aln_cov    Minimum length of the query which must align to the reference sequence. [number] Default: 60"
    db: "|dbsearch  The level of the ARG search, on account of the number and type of employed AMR DB. The possible choices are: 'basic' or 'ext'. The 'basic' option only applies 'CARD', while the 'ext' option utilizes as well the 'ARGminer' (compilation of multiple AMR DBs) and 'BACMET' (biocides and metal resistance) repositories. [string] Default: basic Note: In operational terms, the extensive search ('ext' option) takes much longer computing times. "
    customary_amr_db: "|user_sq    Customary AMR DB provided by the user. The sequences must be in FASTA format."
    threads_number_running: "|threads    Number of threads when running sraX. [number] Default: 6"
    version_displays_version: "|version    Displays version information and exits."
    debug_verbose_output: "|debug      Verbose output (for debugging). 'sraX' was last modified: 05th February 2020"
    i: ""
  }
}