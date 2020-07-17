version 1.0

task Hypro.py {
  input {
    Boolean? modus_decide_restricted
    File? specify_path_gff
    File? specify_path_directory
    String? database
    File? mm_seqs_two
    String? custom_db
    Float? evalue
    Int? min_aln_len
    Float? p_ident
    Int? threads
  }
  command <<<
    hypro.py \
      ~{true="-m" false="" modus_decide_restricted} \
      ~{if defined(specify_path_gff) then ("--input " +  '"' + specify_path_gff + '"') else ""} \
      ~{if defined(specify_path_directory) then ("--output " +  '"' + specify_path_directory + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(mm_seqs_two) then ("--mmseqs2 " +  '"' + mm_seqs_two + '"') else ""} \
      ~{if defined(custom_db) then ("--custom-db " +  '"' + custom_db + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(p_ident) then ("--pident " +  '"' + p_ident + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    modus_decide_restricted: "['restricted', 'full'], --modus ['restricted', 'full'] Modus of HyPro to decide either for an all hypothetical protein annotation or restricted (only full blanks with no partial annotation). Valid arguments: 'full' and 'restricted'"
    specify_path_gff: "Specify PATH to the gff file, that shall be extended."
    specify_path_directory: "Specify PATH to a directory. HyPro will generate all output to this."
    database: "Specify the target db to search in for annotation extension. Available options: 'uniprotkb', 'uniref100', 'uniref90', 'uniref50', 'pdb' [uniprotkb]"
    mm_seqs_two: "Specify the path to the mmseqs2.sh. If using the conda package, 'mmseqs2.sh' is enough. Default path is './scripts/msmeqs2.sh'"
    custom_db: "Specify a path. If no database is found, HyPro will build it. Requires an according -d configuration."
    evalue: "Include sequence matches with < e-value threshold into the profile. Requires a FLOAT >= 0.0. [0.1]"
    min_aln_len: "Specify the minimum alignment length as INT in range 0 to MAX aln length. [0]"
    p_ident: "List only matches above this sequence identity for clustering. Enter a FLOAT between 0 and 1.0. [0.0]"
    threads: "Define number of threads to use by mmseqs indexdb, mmseqs search and mmseqs convertalis. [1]"
  }
}