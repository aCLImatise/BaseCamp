version 1.0

task SraX {
  input {
    Boolean? input_input_directory
    Boolean? output_directory_store
    Boolean? seqal_preferred_algorithm
    Boolean? msa_preferred_algorithm
    Boolean? eval_minimum_evalue
    Boolean? id
    Boolean? alncov_minimum_length
    Boolean? db
    Boolean? usersq_customary_amr
    Boolean? threads_number_running
    Boolean? version_displays_version
    Boolean? debug_verbose_output
    String synopsis
    String accomplished
    String enclosing
    String is
    String presence
    String repositories
    String by
    String designed
    String of
    String the
    String antimicrobial
    String running
    String selected
    String to
    String var_26
    String genome
    String read
    String resistance
    String assembled
    String genes
    String single
    String command_dot
    String sequence
    String under
    String files
    String default
    String var_38
    String required_dot
    String fast_a
    String var_41
    String parameters
    String addition
    String format
    String and
    String systematically
    String detect
  }
  command <<<
    sraX \
      ~{synopsis} \
      ~{accomplished} \
      ~{enclosing} \
      ~{is} \
      ~{presence} \
      ~{repositories} \
      ~{by} \
      ~{designed} \
      ~{of} \
      ~{the} \
      ~{antimicrobial} \
      ~{running} \
      ~{selected} \
      ~{to} \
      ~{var_26} \
      ~{genome} \
      ~{read} \
      ~{resistance} \
      ~{assembled} \
      ~{genes} \
      ~{single} \
      ~{command_dot} \
      ~{sequence} \
      ~{under} \
      ~{files} \
      ~{default} \
      ~{var_38} \
      ~{required_dot} \
      ~{fast_a} \
      ~{var_41} \
      ~{parameters} \
      ~{addition} \
      ~{format} \
      ~{and} \
      ~{systematically} \
      ~{detect} \
      ~{if (input_input_directory) then "-i" else ""} \
      ~{if (output_directory_store) then "-o" else ""} \
      ~{if (seqal_preferred_algorithm) then "-s" else ""} \
      ~{if (msa_preferred_algorithm) then "-a" else ""} \
      ~{if (eval_minimum_evalue) then "-e" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (alncov_minimum_length) then "-c" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (usersq_customary_amr) then "-u" else ""} \
      ~{if (threads_number_running) then "-t" else ""} \
      ~{if (version_displays_version) then "-v" else ""} \
      ~{if (debug_verbose_output) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_input_directory: "|input      Input directory [/path/to/input_dir] containing the input file(s), which\\nmust be in FASTA format and consisting of individual assembled genome sequences."
    output_directory_store: "|output     Directory to store obtained results [/path/to/output_dir]. While not\\nprovided, the following default name will be taken:\\n'input_directory'_'sraX'_'id'_'aln_cov'_'seqal'\\nExample:\\n--------\\nInput directory: 'Test'\\nOptions: -id 85; -c 95; -p dblastx\\nOutput directory: 'Test_sraX_85_95_dblastx'"
    seqal_preferred_algorithm: "|seqal      The preferred algorithm for aligning the assembled genome(s) to a locally\\ncompiled AMR DB. The possible choices are: 'dblastx' (DIAMOND blastx) or 'blastx'\\n(NCBI blastx). In any case, the process is parallelized (up to 100 genome files are\\nrun simultaneously) for reducing computing times. [string] Default: dblastx"
    msa_preferred_algorithm: "|msa        The preferred algorithm for producing the alignment of clustered homologous\\nsequences (multiple-sequence files). The possible choices are: 'muscle', 'clustalo'\\nor 'mafft'. [string] Default: muscle\\nNote: The accuracy and computing times are both dependent on the selected algorithm."
    eval_minimum_evalue: "|eval       Minimum evalue cut-off to filter false positives. [number] Default: 1e-05"
    id: "Minimum identity cut-off to filter false positives. [number] Default: 85"
    alncov_minimum_length: "|aln_cov    Minimum length of the query which must align to the reference sequence.\\n[number] Default: 60"
    db: "|dbsearch  The level of the ARG search, on account of the number and type of employed AMR DB.\\nThe possible choices are: 'basic' or 'ext'. The 'basic' option only applies 'CARD',\\nwhile the 'ext' option utilizes as well the 'ARGminer' (compilation of multiple AMR\\nDBs) and 'BACMET' (biocides and metal resistance) repositories. [string] Default:\\nbasic\\nNote: In operational terms, the extensive search ('ext' option) takes much longer\\ncomputing times."
    usersq_customary_amr: "|user_sq    Customary AMR DB provided by the user. The sequences must be in FASTA format."
    threads_number_running: "|threads    Number of threads when running sraX. [number] Default: 6"
    version_displays_version: "|version    Displays version information and exits."
    debug_verbose_output: "|debug      Verbose output (for debugging).\\n'sraX' was last modified: 05th February 2020\\n"
    synopsis: ""
    accomplished: ""
    enclosing: ""
    is: ""
    presence: ""
    repositories: ""
    by: ""
    designed: ""
    of: ""
    the: ""
    antimicrobial: ""
    running: ""
    selected: ""
    to: ""
    var_26: ""
    genome: ""
    read: ""
    resistance: ""
    assembled: ""
    genes: ""
    single: ""
    command_dot: ""
    sequence: ""
    under: ""
    files: ""
    default: ""
    var_38: ""
    required_dot: ""
    fast_a: ""
    var_41: ""
    parameters: ""
    addition: ""
    format: ""
    and: ""
    systematically: ""
    detect: ""
  }
  output {
    File out_stdout = stdout()
  }
}