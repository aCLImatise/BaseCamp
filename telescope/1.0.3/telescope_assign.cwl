class: CommandLineTool
id: telescope_assign.cwl
inputs:
- id: sam_file
  doc: Path to alignment file. Alignment file can be in SAM or BAM format. File must
    be collated so that all alignments for a read pair appear sequentially in the
    file.
  type: string
  inputBinding:
    position: 0
- id: gtf_file
  doc: Path to annotation file (GTF format)
  type: string
  inputBinding:
    position: 1
- id: attribute
  doc: 'GTF attribute that defines a transposable element locus. GTF features that
    share the same value for --attribute will be considered as part of the same locus.
    (default: locus)'
  type: string
  inputBinding:
    prefix: --attribute
- id: no_feature_key
  doc: 'Used internally to represent alignments. Must be different from all other
    feature names. (default: __no_feature)'
  type: string
  inputBinding:
    prefix: --no_feature_key
- id: n_cpu
  doc: 'Number of cores to use. (Multiple cores not supported yet). (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: tempdir
  doc: 'Path to temporary directory. Temporary files will be stored here. Default
    uses python tempfile package to create the temporary directory. (default: None)'
  type: string
  inputBinding:
    prefix: --tempdir
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
- id: updated_sam
  doc: 'Generate an updated alignment file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --updated_sam
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
- id: overlap_mode
  doc: 'Overlap mode. The method used to determine whether a fragment overlaps feature.
    (default: threshold)'
  type: string
  inputBinding:
    prefix: --overlap_mode
- id: overlap_threshold
  doc: 'Fraction of fragment that must be contained within a feature to be assigned
    to that locus. Ignored if --overlap_method is not "threshold". (default: 0.2)'
  type: string
  inputBinding:
    prefix: --overlap_threshold
- id: annotation_class
  doc: 'Annotation class to use for finding overlaps. Both htseq and intervaltree
    appear to yield identical results. Performance differences are TBD. (default:
    intervaltree)'
  type: string
  inputBinding:
    prefix: --annotation_class
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
- id: skip_em
  doc: 'Exits after loading alignment and saving checkpoint file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_em
outputs: []
cwlVersion: v1.1
baseCommand:
- telescope
- assign
