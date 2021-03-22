class: CommandLineTool
id: isONcorrect.cwl
inputs:
- id: in_fast_q
  doc: 'Path to input fastq file with reads (default: False)'
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_kmer_size_default
  doc: 'Kmer size (default: 9)'
  type: long?
  inputBinding:
    prefix: --k
- id: in_window_size_default
  doc: 'Window size (default: 20)'
  type: long?
  inputBinding:
    prefix: --w
- id: in_xmin
  doc: 'Lower interval length (default: 18)'
  type: long?
  inputBinding:
    prefix: --xmin
- id: in_xmax
  doc: 'Upper interval length (default: 80)'
  type: long?
  inputBinding:
    prefix: --xmax
- id: in_minimum_fraction_keeping
  doc: 'Minimum fraction keeping substitution (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --T
- id: in_exact
  doc: "Get exact solution for WIS for evary read\n(recalculating weights for each\
    \ read (much slower but\nslightly more accuracy, not to be used for clusters\n\
    with over ~500 reads) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_disable_numpy
  doc: "Do not require numpy to be installed, but this version\nis about 1.5x slower\
    \ than with numpy. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --disable_numpy
- id: in_max_seqs_to_spo_a
  doc: 'Maximum number of seqs to spoa (default: 200)'
  type: long?
  inputBinding:
    prefix: --max_seqs_to_spoa
- id: in_max_seqs
  doc: "Maximum number of seqs to correct at a time (in case\nof large clusters).\
    \ (default: 2000)"
  type: long?
  inputBinding:
    prefix: --max_seqs
- id: in_use_rac_on
  doc: "Use racon to polish consensus after spoa (more time\nconsuming but higher\
    \ accuracy). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use_racon
- id: in_exact_instance_limit
  doc: "Activates slower exact mode for instance smaller than\nthis limit (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --exact_instance_limit
- id: in_set_w_dynamically
  doc: "Set w = k + max(2*k, floor(cluster_size/1000)).\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --set_w_dynamically
- id: in_verbose
  doc: 'Print various developer stats. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_rand_strobes
  doc: "EXPERIMENTAL PARAMETER: IsONcorrect uses paired\nminimizers (described in\
    \ isONcorrect paper). This\nexperimental option uses randstrobes instead of paired\n\
    minimizers to find shared regions. Randstrobes reduces\nmemory footprint substantially\
    \ (and runtime) with only\nslight increase in post correction quality. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --randstrobes
- id: in_layers
  doc: "EXPERIMENTAL PARAMETER: Active when --randstrobes\nspecified. How many \"\
    layers\" with randstrobes we want\nper sequence to sample. More layers gives more\n\
    accureate results but is more memory consuming and\nslower. It is not reccomended\
    \ to specify more than 5."
  type: long?
  inputBinding:
    prefix: --layers
- id: in_set_layers_manually
  doc: "EXPERIMENTAL PARAMETER: By default isONcorrect sets\nlayers = 1 if nr seqs\
    \ in batch to be corrected is >=\n1000, else layers = 2. This command will manually\
    \ pick\nthe number of layers specified with the --layers\nparameter. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --set_layers_manually
- id: in_compression
  doc: "Use homopolymenr compressed reads. (Deprecated,\nbecause we will have fewer\
    \ minmimizer combinations to\nspan regions in homopolymenr dense regions. Solution\n\
    could be to adjust upper interval legnth dynamically\nto guarantee a certain number\
    \ of spanning intervals.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --compression
- id: in_out_folder
  doc: "A fasta file with transcripts that are shared between\nsamples and have perfect\
    \ illumina support. (default:\nNone)\n"
  type: Directory?
  inputBinding:
    prefix: --outfolder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: "A fasta file with transcripts that are shared between\nsamples and have perfect\
    \ illumina support. (default:\nNone)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoncorrect:0.0.8--py_0
cwlVersion: v1.1
baseCommand:
- isONcorrect
