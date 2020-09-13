version 1.0

task MatamDbPreprocessingpy {
  input {
    File? input_ref
    Boolean? verbose
    Int? cpu
    Int? max_memory
    Int? min_length
    Int? max_length
    Int? max_consecutive_n
    Float? clustering_id_threshold
    Boolean? by_kingdom
    Array[String] kingdoms
    String? out_db_name
    Boolean? keep_tmp
    Boolean? debug
    String? d
    String available
  }
  command <<<
    matam_db_preprocessing_py \
      ~{available} \
      ~{if defined(input_ref) then ("--input_ref " +  '"' + input_ref + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_consecutive_n) then ("--max_consecutive_n " +  '"' + max_consecutive_n + '"') else ""} \
      ~{if defined(clustering_id_threshold) then ("--clustering_id_threshold " +  '"' + clustering_id_threshold + '"') else ""} \
      ~{if (by_kingdom) then "--by_kingdom" else ""} \
      ~{if defined(kingdoms) then ("--kingdoms " +  '"' + kingdoms + '"') else ""} \
      ~{if defined(out_db_name) then ("--out_db_name " +  '"' + out_db_name + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    input_ref: "Input reference file (fasta format). Silva-formated taxonomies will be used if"
    verbose: "Increase verbosity"
    cpu: "Max number of CPU to use. Default is 1 cpu"
    max_memory: "Maximum memory to use (in MBi). Default is 10000 MBi"
    min_length: "Ref sequences minimum length"
    max_length: "Ref sequences maximum length"
    max_consecutive_n: "Maximum nb of consecutive Ns a sequence is allowed to have. Default is 5. Setting\\nit to 0 will remove all sequences with Ns. Ns in accepted sequences will be\\nreplaced by As"
    clustering_id_threshold: "Identity threshold for clustering. Default is 0.95"
    by_kingdom: "Perform clustering by kingdom"
    kingdoms: "Kingdoms to clusterize the DB for. Default is ['archaea', 'bacteria', 'eukaryota']"
    out_db_name: "Output MATAM db name. Default is composed from parameters"
    keep_tmp: "Do not remove tmp files"
    debug: "Output debug infos"
    d: ""
    available: "-d DBDIR, --db_dir DBDIR           Database output directory. Default is cwd"
  }
  output {
    File out_stdout = stdout()
  }
}