class: CommandLineTool
id: telescope_resume.cwl
inputs:
- id: in_quiet
  doc: 'Silence (most) output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: 'Print debug messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_log_file
  doc: 'Log output to this file. (default: None)'
  type: File
  inputBinding:
    prefix: --logfile
- id: in_outdir
  doc: 'Output directory. (default: .)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_exp_tag
  doc: 'Experiment tag (default: telescope)'
  type: string
  inputBinding:
    prefix: --exp_tag
- id: in_reassign_mode
  doc: "Reassignment mode. After EM is complete, each fragment\nis reassigned according\
    \ to the expected value of its\nmembership weights. The reassignment method is\
    \ the\nmethod for resolving the \"best\" reassignment for\nfragments that have\
    \ multiple possible reassignments.\nAvailable modes are: \"exclude\" - fragments\
    \ with\nmultiple best assignments are excluded from the final\ncounts; \"choose\"\
    \ - the best assignment is randomly\nchosen from among the set of best assignments;\n\
    \"average\" - the fragment is divided evenly among the\nbest assignments; \"conf\"\
    \ - only assignments that\nexceed a certain threshold (see --conf_prob) are\n\
    accepted; \"unique\" - only uniquely aligned reads are\nincluded. NOTE: Results\
    \ using all assignment modes are\nincluded in the Telescope report by default.\
    \ This\nargument determines what mode will be used for the\n\"final counts\" column.\
    \ (default: exclude)"
  type: string
  inputBinding:
    prefix: --reassign_mode
- id: in_conf_prob
  doc: "Minimum probability for high confidence assignment.\n(default: 0.9)"
  type: double
  inputBinding:
    prefix: --conf_prob
- id: in_pi_prior
  doc: "Prior on π. Equivalent to adding n unique reads.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --pi_prior
- id: in_theta_prior
  doc: "Prior on θ. Equivalent to adding n non-unique reads.\nNOTE: It is recommended\
    \ to set this prior to a large\nvalue. This increases the penalty for non-unique\
    \ reads\nand improves accuracy. (default: 200000)"
  type: long
  inputBinding:
    prefix: --theta_prior
- id: in_em_epsilon
  doc: 'EM Algorithm Epsilon cutoff (default: 1e-7)'
  type: double
  inputBinding:
    prefix: --em_epsilon
- id: in_max_iter
  doc: 'EM Algorithm maximum iterations (default: 100)'
  type: long
  inputBinding:
    prefix: --max_iter
- id: in_use_likelihood
  doc: "Use difference in log-likelihood as convergence\ncriteria. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --use_likelihood
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: 'Log output to this file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
- id: out_outdir
  doc: 'Output directory. (default: .)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- telescope
- resume
