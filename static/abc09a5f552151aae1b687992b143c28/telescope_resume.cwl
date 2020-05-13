class: CommandLineTool
id: telescope_resume.cwl
inputs:
- id: checkpoint
  doc: Path to checkpoint file.
  type: string
  inputBinding:
    position: 0
- id: quiet
  doc: 'Silence (most) output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: 'Print debug messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: log_file
  doc: 'Log output to this file. (default: None)'
  type: string
  inputBinding:
    prefix: --logfile
- id: outdir
  doc: 'Output directory. (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: exp_tag
  doc: 'Experiment tag (default: telescope)'
  type: string
  inputBinding:
    prefix: --exp_tag
- id: reassign_mode
  doc: 'Reassignment mode. After EM is complete, each fragment is reassigned according
    to the expected value of its membership weights. The reassignment method is the
    method for resolving the "best" reassignment for fragments that have multiple
    possible reassignments. Available modes are: "exclude" - fragments with multiple
    best assignments are excluded from the final counts; "choose" - the best assignment
    is randomly chosen from among the set of best assignments; "average" - the fragment
    is divided evenly among the best assignments; "conf" - only assignments that exceed
    a certain threshold (see --conf_prob) are accepted; "unique" - only uniquely aligned
    reads are included. NOTE: Results using all assignment modes are included in the
    Telescope report by default. This argument determines what mode will be used for
    the "final counts" column. (default: exclude)'
  type: string
  inputBinding:
    prefix: --reassign_mode
- id: conf_prob
  doc: 'Minimum probability for high confidence assignment. (default: 0.9)'
  type: string
  inputBinding:
    prefix: --conf_prob
- id: pi_prior
  doc: 'Prior on π. Equivalent to adding n unique reads. (default: 0)'
  type: string
  inputBinding:
    prefix: --pi_prior
- id: theta_prior
  doc: 'Prior on θ. Equivalent to adding n non-unique reads. NOTE: It is recommended
    to set this prior to a large value. This increases the penalty for non-unique
    reads and improves accuracy. (default: 200000)'
  type: string
  inputBinding:
    prefix: --theta_prior
- id: em_epsilon
  doc: 'EM Algorithm Epsilon cutoff (default: 1e-7)'
  type: string
  inputBinding:
    prefix: --em_epsilon
- id: max_iter
  doc: 'EM Algorithm maximum iterations (default: 100)'
  type: long
  inputBinding:
    prefix: --max_iter
- id: use_likelihood
  doc: 'Use difference in log-likelihood as convergence criteria. (default: False)'
  type: boolean
  inputBinding:
    prefix: --use_likelihood
outputs: []
cwlVersion: v1.1
baseCommand:
- telescope
- resume
