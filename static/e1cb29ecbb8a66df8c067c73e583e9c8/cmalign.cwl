class: CommandLineTool
id: cmalign.cwl
inputs:
- id: in_output_alignment_file
  doc: ': output the alignment to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_configure_cm_global
  doc: ': configure CM for global alignment [default: local]'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_opt_acc
  doc: ': use the Holmes/Durbin optimal accuracy algorithm  [default]'
  type: boolean?
  inputBinding:
    prefix: --optacc
- id: in_cy_k
  doc: ': use the CYK algorithm'
  type: boolean?
  inputBinding:
    prefix: --cyk
- id: in_sample
  doc: ': sample alignment of each seq from posterior distribution'
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_seed
  doc: ': w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_not_run_c
  doc: ': do not use truncated alignment algorithm'
  type: boolean?
  inputBinding:
    prefix: --notrunc
- id: in_sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean?
  inputBinding:
    prefix: --sub
- id: in_h_banded
  doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  type: boolean?
  inputBinding:
    prefix: --hbanded
- id: in_tau
  doc: ': set tail loss prob for HMM bands to <x>  [1e-7]  (1e-18<x<1)'
  type: double?
  inputBinding:
    prefix: --tau
- id: in_mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [1028.0]  (x>0.)'
  type: long?
  inputBinding:
    prefix: --mxsize
- id: in_fixed_tau
  doc: ': do not adjust tau (tighten bands) until mx size is < limit'
  type: boolean?
  inputBinding:
    prefix: --fixedtau
- id: in_max_tau
  doc: ': set max tau <x> when tightening HMM bands  [0.05]  (0<x<0.5)'
  type: long?
  inputBinding:
    prefix: --maxtau
- id: in_non_banded
  doc: ': do not use HMM bands for faster alignment'
  type: boolean?
  inputBinding:
    prefix: --nonbanded
- id: in_small
  doc: ': use small memory divide and conquer (d&c) algorithm'
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_s_file
  doc: ': dump alignment score information to file <f>'
  type: File?
  inputBinding:
    prefix: --sfile
- id: in_t_file
  doc: ': dump individual sequence parsetrees to file <f>'
  type: File?
  inputBinding:
    prefix: --tfile
- id: in_i_file
  doc: ': dump information on per-sequence inserts to file <f>'
  type: File?
  inputBinding:
    prefix: --ifile
- id: in_el_file
  doc: ': dump information on per-sequence EL inserts to file <f>'
  type: File?
  inputBinding:
    prefix: --elfile
- id: in_map_ali
  doc: ': include alignment in file <f> (same ali that CM came from)'
  type: File?
  inputBinding:
    prefix: --mapali
- id: in_map_str
  doc: ': include structure (w/pknots) from <f> from --mapali <f>'
  type: boolean?
  inputBinding:
    prefix: --mapstr
- id: in_noss
  doc: ': cmbuild --noss option was used w/aln from --mapali <f>'
  type: boolean?
  inputBinding:
    prefix: --noss
- id: in_in_format
  doc: ': assert <seqfile> is in format <s>: no autodetection'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_dna_out
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean?
  inputBinding:
    prefix: --dnaout
- id: in_no_prob
  doc: ': do not include posterior probabilities in the alignment'
  type: boolean?
  inputBinding:
    prefix: --noprob
- id: in_match_only
  doc: ': include only match columns in output alignment'
  type: boolean?
  inputBinding:
    prefix: --matchonly
- id: in_i_leaved
  doc: ': force output in interleaved Stockholm format'
  type: boolean?
  inputBinding:
    prefix: --ileaved
- id: in_regress
  doc: ': save regression test data to file <f>'
  type: File?
  inputBinding:
    prefix: --regress
- id: in_verbose
  doc: ': report extra information; mainly useful for debugging'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads  (n>=0)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignment_file
  doc: ': output the alignment to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignment_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/infernal:1.1.3--h516909a_0
cwlVersion: v1.1
baseCommand:
- cmalign
