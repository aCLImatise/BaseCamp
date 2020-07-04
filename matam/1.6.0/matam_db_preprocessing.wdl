version 1.0

task MatamDbPreprocessing.py {
  input {
    String? input_ref
    String? db_dir
    Boolean? verbose
    String? cpu
    Int? max_memory
    Int? min_length
    Int? max_length
    Int? max_consecutive_n
    String? clustering_id_threshold
    Boolean? by_kingdom
    Array[String] kingdoms
    String? out_db_name
    Boolean? keep_tmp
    Boolean? debug
  }
  command <<<
    matam_db_preprocessing.py \
      ~{if defined(input_ref) then ("--input_ref " +  '"' + input_ref + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_consecutive_n) then ("--max_consecutive_n " +  '"' + max_consecutive_n + '"') else ""} \
      ~{if defined(clustering_id_threshold) then ("--clustering_id_threshold " +  '"' + clustering_id_threshold + '"') else ""} \
      ~{true="--by_kingdom" false="" by_kingdom} \
      ~{if defined(kingdoms) then ("--kingdoms " +  '"' + kingdoms + '"') else ""} \
      ~{if defined(out_db_name) then ("--out_db_name " +  '"' + out_db_name + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_ref: "Input reference file (fasta format). Silva-formated taxonomies will be used if available"
    db_dir: "Database output directory. Default is cwd"
    verbose: "Increase verbosity"
    cpu: "Max number of CPU to use. Default is 1 cpu"
    max_memory: "Maximum memory to use (in MBi). Default is 10000 MBi"
    min_length: "Ref sequences minimum length"
    max_length: "Ref sequences maximum length"
    max_consecutive_n: "Maximum nb of consecutive Ns a sequence is allowed to have. Default is 5. Setting it to 0 will remove all sequences with Ns. Ns in accepted sequences will be replaced by As"
    clustering_id_threshold: "Identity threshold for clustering. Default is 0.95"
    by_kingdom: "Perform clustering by kingdom"
    kingdoms: "Kingdoms to clusterize the DB for. Default is ['archaea', 'bacteria', 'eukaryota']"
    out_db_name: "Output MATAM db name. Default is composed from parameters"
    keep_tmp: "Do not remove tmp files"
    debug: "Output debug infos"
  }
}