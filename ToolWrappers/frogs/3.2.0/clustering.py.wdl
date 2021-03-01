version 1.0

task Clusteringpy {
  input {
    Int? nb_cpus
    Boolean? debug
    Int? distance
    Boolean? fastidious
    Boolean? denoising
    File? input_fast_a
    File? input_count
    File? output_biom
    File? output_fast_a
    File? output_compo
    File? log_file
    Boolean? v
  }
  command <<<
    clustering_py \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if (fastidious) then "--fastidious" else ""} \
      ~{if (denoising) then "--denoising" else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_count) then ("--input-count " +  '"' + input_count + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_compo) then ("--output-compo " +  '"' + output_compo + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    distance: "Maximum distance between sequences in each aggregation\\nstep. RECOMMENDED : d=1 in combination with\\n--fastidious option [Default: 1]"
    fastidious: "use the fastidious option of swarm to refine OTU.\\nRECOMMENDED in combination with a distance equal to 1\\n(-d). it is only usable with d=1 and mutually\\nexclusive with --denoising."
    denoising: "denoise data by clustering read with distance=1 before\\nperform real clustering. It is mutually exclusive with\\n--fastidious."
    input_fast_a: "The sequences file (format: FASTA)."
    input_count: "The count file for 'fasta-file' (format: TSV). It\\ncontains the count by sample for each sequence."
    output_biom: "This output file will contain the abondance by sample\\nfor each cluster (format: BIOM). [Default:\\nclustering_abundance.biom]"
    output_fast_a: "This output file will contain the seed sequence for\\neach cluster (format: FASTA). [Default:\\nclustering_seeds.fasta]"
    output_compo: "This output file will contain the composition of each\\ncluster (format: TSV). One Line is a cluster ; each\\ncolumn is a sequence ID. [Default:\\nclustering_swarms_composition.tsv]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_biom = "${in_output_biom}"
    File out_output_fast_a = "${in_output_fast_a}"
    File out_output_compo = "${in_output_compo}"
    File out_log_file = "${in_log_file}"
  }
}