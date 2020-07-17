class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ipa_local.cwl
inputs:
- id: input_fn
  doc: '(Required.) Input reads in FASTA, FASTQ, BAM, XML or FOFN formats. Repeat
    "-i fn1 -i fn2" for multiple inputs, or use a "file-of-filenames", e.g. "-i foo.fofn".
    (default: [])'
  type: string
  inputBinding:
    prefix: --input-fn
- id: no_polish
  doc: 'Skip polishing. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-polish
- id: no_phase
  doc: 'Skip phasing. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-phase
- id: genome_size
  doc: 'Genome size, required only for downsampling. (default: 0)'
  type: string
  inputBinding:
    prefix: --genome-size
- id: coverage
  doc: 'Downsampled coverage, only if genome_size * coverage > 0. (default: 0)'
  type: string
  inputBinding:
    prefix: --coverage
- id: advanced_opt
  doc: 'Advanced options (quoted). (default: )'
  type: string
  inputBinding:
    prefix: --advanced-opt
- id: n_threads
  doc: '(Required) Maximum number of threads to use per job. (Applies to both remote
    and local tasks.) (default: 0)'
  type: string
  inputBinding:
    prefix: --nthreads
- id: n_shards
  doc: 'Maximum number of parallel tasks to split work into (though the number of
    simultaneous jobs could be much lower). (default: 40)'
  type: string
  inputBinding:
    prefix: --nshards
- id: tmp_dir
  doc: 'Temporary directory for some disk based operations like sorting. (default:
    /tmp)'
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: verbose
  doc: 'Extra logging for each task. (Show full env, e.g.) (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: n_jobs
  doc: '(Required) Maximum number of simultaneous jobs, each running up to nthreads.
    (default: 0)'
  type: string
  inputBinding:
    prefix: --njobs
- id: run_dir
  doc: 'Directory in which to run snakemake. (default: ./RUN)'
  type: string
  inputBinding:
    prefix: --run-dir
- id: target
  doc: '"finish" is implied, but you can use this to short-circuit. (default: )'
  type: string
  inputBinding:
    prefix: --target
- id: unlock
  doc: 'Pass "--unlock" to snakemake, in case snakemake crashed earlier. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --unlock
- id: dry_run
  doc: 'Print the snakemake command and do a "dry run" quickly. Very useful! (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: only_print
  doc: 'Do not actually run snakemake. Simply print the snakemake command and exit.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --only-print
- id: resume
  doc: 'Restart snakemake, but after regenerating the config file. In this case, run-dir
    may already exist. (Without --resume, run-dir must not already exist.) (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --resume
outputs: []
cwlVersion: v1.1
baseCommand:
- ipa
- local
