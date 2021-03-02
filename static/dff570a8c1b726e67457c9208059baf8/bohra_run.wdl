version 1.0

task BohraRun {
  input {
    File? input_file
    Directory? job_id
    File? reference
    File? mask
    File? kraken_db
    Int? kraken_threads
    String? pipeline
    String? assembler
    Int? cpus
    Int? minal_n
    Int? min_cov
    File? prefill_path
    Boolean? mdu
    Directory? workdir
    Directory? resources
    Boolean? force
    Boolean? dry_run
    Boolean? cluster
    File? json
    String? queue
    Boolean? gubbins
    String? keep
  }
  command <<<
    bohra run \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(job_id) then ("--job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(kraken_db) then ("--kraken_db " +  '"' + kraken_db + '"') else ""} \
      ~{if defined(kraken_threads) then ("--kraken_threads " +  '"' + kraken_threads + '"') else ""} \
      ~{if defined(pipeline) then ("--pipeline " +  '"' + pipeline + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(minal_n) then ("--minaln " +  '"' + minal_n + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(prefill_path) then ("--prefillpath " +  '"' + prefill_path + '"') else ""} \
      ~{if (mdu) then "-mdu" else ""} \
      ~{if defined(workdir) then ("-workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(resources) then ("-resources " +  '"' + resources + '"') else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (dry_run) then "-dry-run" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if (gubbins) then "--gubbins" else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bohra:1.2.16--py_0"
  }
  parameter_meta {
    input_file: "Input file = tab-delimited with 3 columns\\n<isolatename> <path_to_read1> <path_to_read2>\\n(default: )"
    job_id: "Job ID, will be the name of the output directory\\n(default: )"
    reference: "Path to reference (.gbk or .fa) (default: )"
    mask: "Path to mask file if used (.bed) (default: False)"
    kraken_db: "Path to DB for use with kraken2, if no DB present\\nspeciation will not be performed. [env var:\\nKRAKEN2_DEFAULT_DB] (default: None)"
    kraken_threads: "Number of threads for each kraken2 (default: 16)"
    pipeline: "The pipeline to run. Preview (--preview - default)\\nwill calculate mash-distances and a mash-tree for\\nquick inspection of your dataset. SNPs and ASSEMBLIES\\n('sa') will perform SNPs and ASSEMBLIES. ALL ('all')\\nwill perform SNPS, ASSEMBLIES and ROARY for pan-genome\\nanalysis (default: preview)"
    assembler: "Assembler to use. (default: shovill)"
    cpus: "Number of CPU cores to run, will define how many rules\\nare run at a time (default: 16)"
    minal_n: "Minimum percent alignment. Isolates which do not align\\nto reference at this threshold will not be included in\\ncore phylogeny. (default: 0)"
    min_cov: "Minimum percent alignment. Isolates which do not have\\naverage read coverage above this threshold will not be\\nincluded further analysis. (default: 0)"
    prefill_path: "Path to existing assemblies - in the form\\npath_to_somewhere/isolatename/contigs.fa (default:\\nNone)"
    mdu: "If running on MDU data (default: False)"
    workdir: "The directory where Bohra will be run, default is\\ncurrent directory (default: /)"
    resources: "Directory where templates are stored (default:\\n/usr/local/lib/python3.7/site-\\npackages/bohra/templates)"
    force: "Add if you would like to force a complete restart of\\nthe pipeline. All previous logs will be lost.\\n(default: False)"
    dry_run: "If you would like to see a dry run of commands to be\\nexecuted. (default: False)"
    cluster: "If you are running Bohra on a cluster. (default:\\nFalse)"
    json: "Path to cluster.json - required if --cluster is set\\n(default: )"
    queue: "Type of queue (sbatch or qsub currently supported) -\\nrequired if --cluster is set. (default: )"
    gubbins: "Set to use gubbins for recombination correction.\\n(default: False)"
    keep: "If you are rerunning bohra over an exisiting directory\\nset --keep to 'Y' to archive report files - otherwise\\nprevious reprot files will be removed. (default: N)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_job_id = "${in_job_id}"
  }
}