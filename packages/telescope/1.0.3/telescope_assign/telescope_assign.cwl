class: CommandLineTool
id: telescope_assign.cwl
inputs:
- id: in_attribute
  doc: "GTF attribute that defines a transposable element\nlocus. GTF features that\
    \ share the same value for\n--attribute will be considered as part of the same\n\
    locus. (default: locus)"
  type: string
  inputBinding:
    prefix: --attribute
- id: in_no_feature_key
  doc: "Used internally to represent alignments. Must be\ndifferent from all other\
    \ feature names. (default:\n__no_feature)"
  type: string
  inputBinding:
    prefix: --no_feature_key
- id: in_n_cpu
  doc: "Number of cores to use. (Multiple cores not supported\nyet). (default: 1)"
  type: long
  inputBinding:
    prefix: --ncpu
- id: in_tempdir
  doc: "Path to temporary directory. Temporary files will be\nstored here. Default\
    \ uses python tempfile package to\ncreate the temporary directory. (default: None)"
  type: File
  inputBinding:
    prefix: --tempdir
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
- id: in_updated_sam
  doc: 'Generate an updated alignment file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --updated_sam
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
- id: in_overlap_mode
  doc: "Overlap mode. The method used to determine whether a\nfragment overlaps feature.\
    \ (default: threshold)"
  type: string
  inputBinding:
    prefix: --overlap_mode
- id: in_overlap_threshold
  doc: "Fraction of fragment that must be contained within a\nfeature to be assigned\
    \ to that locus. Ignored if\n--overlap_method is not \"threshold\". (default:\
    \ 0.2)"
  type: double
  inputBinding:
    prefix: --overlap_threshold
- id: in_annotation_class
  doc: "Annotation class to use for finding overlaps. Both\nhtseq and intervaltree\
    \ appear to yield identical\nresults. Performance differences are TBD. (default:\n\
    intervaltree)"
  type: string
  inputBinding:
    prefix: --annotation_class
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
  doc: "Use difference in log-likelihood as convergence\ncriteria. (default: False)"
  type: boolean
  inputBinding:
    prefix: --use_likelihood
- id: in_skip_em
  doc: "Exits after loading alignment and saving checkpoint\nfile. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --skip_em
- id: in_sam_file
  doc: "Path to alignment file. Alignment file can be in SAM\nor BAM format. File\
    \ must be collated so that all\nalignments for a read pair appear sequentially\
    \ in the\nfile."
  type: string
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: Path to annotation file (GTF format)
  type: string
  inputBinding:
    position: 1
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
- assign
