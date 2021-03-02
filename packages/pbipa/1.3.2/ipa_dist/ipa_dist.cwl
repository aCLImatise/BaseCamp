class: CommandLineTool
id: ipa_dist.cwl
inputs:
- id: in_input_fn
  doc: '(Required.) Input reads in FASTA, FASTQ, BAM, XML or FOFN formats. Repeat
    "-i fn1 -i fn2" for multiple inputs, or use a "file-of-filenames", e.g. "-i foo.fofn".
    (default: [])'
  type: File?
  inputBinding:
    prefix: --input-fn
- id: in_no_polish
  doc: 'Skip polishing. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-polish
- id: in_no_phase
  doc: 'Skip phasing. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-phase
- id: in_no_purge_dups
  doc: 'Skip purge_dups. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-purge-dups
- id: in_genome_size
  doc: 'Genome size, required only for downsampling. (default: 0)'
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_coverage
  doc: 'Downsampled coverage, only if genome_size * coverage > 0. (default: 0)'
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_advanced_opt
  doc: 'Advanced options (quoted). (default: )'
  type: string?
  inputBinding:
    prefix: --advanced-opt
- id: in_n_threads
  doc: '(Required) Maximum number of threads to use per job. (Applies to both remote
    and local tasks.) (default: 0)'
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_n_shards
  doc: 'Maximum number of parallel tasks to split work into (though the number of
    simultaneous jobs could be much lower). (default: 40)'
  type: long?
  inputBinding:
    prefix: --nshards
- id: in_tmp_dir
  doc: 'Temporary directory for some disk based operations like sorting. (default:
    /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_verbose
  doc: 'Extra logging for each task. (Show full env, e.g.) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_n_jobs
  doc: '(Required) Maximum number of simultaneous jobs, each running up to nthreads.
    (default: 0)'
  type: long?
  inputBinding:
    prefix: --njobs
- id: in_run_dir
  doc: 'Directory in which to run snakemake. (default: ./RUN)'
  type: Directory?
  inputBinding:
    prefix: --run-dir
- id: in_target
  doc: '"finish" is implied, but you can use this to short-circuit. (default: )'
  type: string?
  inputBinding:
    prefix: --target
- id: in_unlock
  doc: 'Pass "--unlock" to snakemake, in case snakemake crashed earlier. (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_dry_run
  doc: 'Print the snakemake command and do a "dry run" quickly. Very useful! (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_only_print
  doc: 'Do not actually run snakemake. Simply print the snakemake command and exit.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --only-print
- id: in_cluster_args
  doc: "(Required) Pass this along to snakemake, for conveniently running in a compute\
    \ cluster. (default: )\n"
  type: string?
  inputBinding:
    prefix: --cluster-args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa
- dist
