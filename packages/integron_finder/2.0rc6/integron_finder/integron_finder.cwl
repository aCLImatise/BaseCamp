class: CommandLineTool
id: integron_finder.cwl
inputs:
- id: in_local_max
  doc: "Allows thorough local detection (slower but more\nsensitive and do not increase\
    \ false positive rate)."
  type: boolean?
  inputBinding:
    prefix: --local-max
- id: in_func_an_not
  doc: "Functional annotation of CDS associated with integrons\nHMM files are needed\
    \ in Func_annot folder."
  type: boolean?
  inputBinding:
    prefix: --func-annot
- id: in_cpu
  doc: Number of CPUs used by INFERNAL and HMMER
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_distance_thresh
  doc: "Two elements are aggregated if they are distant of\nDISTANCE_THRESH [4000]bp\
    \ or less"
  type: long?
  inputBinding:
    prefix: --distance-thresh
- id: in_outdir
  doc: 'Set the output directory (default: current)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_union_integrase_s
  doc: "Instead of taking intersection of hits from Phage_int\nprofile (Tyr recombinases)\
    \ and integron_integrase\nprofile, use the union of the hits"
  type: boolean?
  inputBinding:
    prefix: --union-integrases
- id: in_cm_search
  doc: "Complete path to cmsearch if not in PATH. eg:\n/usr/local/bin/cmsearch"
  type: File?
  inputBinding:
    prefix: --cmsearch
- id: in_hmm_search
  doc: "Complete path to hmmsearch if not in PATH. eg:\n/usr/local/bin/hmmsearch"
  type: File?
  inputBinding:
    prefix: --hmmsearch
- id: in_prodigal
  doc: "Complete path to prodigal if not in PATH. eg:\n/usr/local/bin/prodigal"
  type: File?
  inputBinding:
    prefix: --prodigal
- id: in_path_func_an_not
  doc: "Path to file containing all hmm bank paths (one per\nline)"
  type: File?
  inputBinding:
    prefix: --path-func-annot
- id: in_gem_base
  doc: "Use gembase formatted protein file instead of\nProdigal. Folder structure\
    \ must be preserved"
  type: boolean?
  inputBinding:
    prefix: --gembase
- id: in_an_not_parser
  doc: "the name of the parser to use to get information from\nprotein file."
  type: File?
  inputBinding:
    prefix: --annot-parser
- id: in_attc_model
  doc: Path or file to the attc model (Covariance Matrix).
  type: File?
  inputBinding:
    prefix: --attc-model
- id: in_evalue_attc
  doc: "Set evalue threshold to filter out hits above it\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --evalue-attc
- id: in_cal_in_threshold
  doc: "keep 'CALIN' only if attC sites nuber >= calin-\nthreshold (default: 2)"
  type: long?
  inputBinding:
    prefix: --calin-threshold
- id: in_keep_palindromes
  doc: "For a given hit, if the palindromic version is found,\ndon't remove the one\
    \ with highest evalue."
  type: boolean?
  inputBinding:
    prefix: --keep-palindromes
- id: in_no_proteins
  doc: "Don't annotate CDS and don't find integrase, just look\nfor attC sites."
  type: boolean?
  inputBinding:
    prefix: --no-proteins
- id: in_promoter_atti
  doc: "Search also for promoter and attI sites. (default\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --promoter-attI
- id: in_max_attc_size
  doc: 'Set maximum value fot the attC size (default: 200bp)'
  type: long?
  inputBinding:
    prefix: --max-attc-size
- id: in_min_attc_size
  doc: 'set minimum value fot the attC size (default: 40bp)'
  type: long?
  inputBinding:
    prefix: --min-attc-size
- id: in_eagle_eyes
  doc: "Synonym of --local-max. Like a soaring eagle in the\nsky, catching rabbits\
    \ (or attC sites) by surprise."
  type: boolean?
  inputBinding:
    prefix: --eagle-eyes
- id: in_circ
  doc: Set the default topology for replicons to 'circular'
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_linear
  doc: Set the default topology for replicons to 'linear'
  type: boolean?
  inputBinding:
    prefix: --linear
- id: in_topology_file
  doc: "The path to a file where the topology for each\nreplicon is specified."
  type: File?
  inputBinding:
    prefix: --topology-file
- id: in_mute
  doc: "mute the log on stdout.(continue to log on\nintegron_finder.out)"
  type: boolean?
  inputBinding:
    prefix: --mute
- id: in_pdf
  doc: "For each complete integron, a simple graphic of the\nregion is depicted (in\
    \ pdf format)"
  type: boolean?
  inputBinding:
    prefix: --pdf
- id: in_gbk
  doc: "generate a GenBank file with the sequence annotated\nwith the same annotations\
    \ than .integrons file."
  type: boolean?
  inputBinding:
    prefix: --gbk
- id: in_keep_tmp
  doc: "keep intermediate results. This results are stored in\ndirectory named tmp_<replicon\
    \ id>"
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_split_results
  doc: "Instead of merging integron results from all replicon\nin one file, keep them\
    \ in separated files."
  type: boolean?
  inputBinding:
    prefix: --split-results
- id: in_verbose
  doc: 'Increase verbosity of output (can be cumulative : -vv)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'Decrease verbosity of output (can be cumulative : -qq)'
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Set the output directory (default: current)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/integron_finder:2.0rc6--py_0
cwlVersion: v1.1
baseCommand:
- integron_finder
