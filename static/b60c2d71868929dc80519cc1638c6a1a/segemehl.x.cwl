class: CommandLineTool
id: segemehl.x.cwl
inputs:
- id: in_database
  doc: '[<file>]  list of path/filename(s) of fasta database sequence(s)'
  type: File
  inputBinding:
    prefix: --database
- id: in_query
  doc: path/filename of query sequences (default:none)
  type: File
  inputBinding:
    prefix: --query
- id: in_mate
  doc: path/filename of mate pair sequences (default:none)
  type: File
  inputBinding:
    prefix: --mate
- id: in_index
  doc: path/filename of db index (default:none)
  type: File
  inputBinding:
    prefix: --index
- id: in_index_two
  doc: path/filename of second db index (default:none)
  type: File
  inputBinding:
    prefix: --index2
- id: in_generate
  doc: generate db index and store to disk (default:none)
  type: File
  inputBinding:
    prefix: --generate
- id: in_generate_two
  doc: generate second db index and store to disk (default:none)
  type: File
  inputBinding:
    prefix: --generate2
- id: in_read_group_file
  doc: filename to read @RG header (default:none)
  type: File
  inputBinding:
    prefix: --readgroupfile
- id: in_read_groupid
  doc: read group id (default:none)
  type: string
  inputBinding:
    prefix: --readgroupid
- id: in_threads
  doc: start <n> threads (default:1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_outfile
  doc: outputfile (default:none)
  type: string
  inputBinding:
    prefix: --outfile
- id: in_bam_aba_fix_oid_a
  doc: generate a bam output (-o <filename> required)
  type: File
  inputBinding:
    prefix: --bamabafixoida
- id: in_no_match_filename
  doc: filename for unmatched reads (default:none)
  type: File
  inputBinding:
    prefix: --nomatchfilename
- id: in_brief_cigar
  doc: brief cigar string (M vs X and =)
  type: boolean
  inputBinding:
    prefix: --briefcigar
- id: in_progress_bar
  doc: show a progress bar
  type: boolean
  inputBinding:
    prefix: --progressbar
- id: in_file_bins
  doc: file bins with basename <string> for easier data handling (default:none)
  type: File
  inputBinding:
    prefix: --filebins
- id: in_me_op
  doc: output MEOP field for easier variance calling in SAM (XE:Z:)
  type: boolean
  inputBinding:
    prefix: --MEOP
- id: in_bisulfite
  doc: bisulfite aln with methylC-seq/Lister et al. (=1) or bs-seq/Cokus et al. protocol
    (=2) (default:0)
  type: long
  inputBinding:
    prefix: --bisulfite
- id: in_splits
  doc: '[<basename>]       detect split/spliced reads. (default:none)'
  type: boolean
  inputBinding:
    prefix: --splits
- id: in_accuracy
  doc: min percentage of matches per read in semi-global alignment (default:90)
  type: long
  inputBinding:
    prefix: --accuracy
- id: in_differences
  doc: search seeds initially with <n> differences (default:1)
  type: long
  inputBinding:
    prefix: --differences
- id: in_evalue
  doc: max evalue (default:5.000000)
  type: long
  inputBinding:
    prefix: --evalue
- id: in_hit_strategy
  doc: report only best scoring hits (=1) or all (=0) (default:1)
  type: boolean
  inputBinding:
    prefix: --hitstrategy
- id: in_minsize
  doc: minimum length of queries (default:12)
  type: long
  inputBinding:
    prefix: --minsize
- id: in_m_infra_glen
  doc: min length of a spliced fragment (default:20)
  type: long
  inputBinding:
    prefix: --minfraglen
- id: in_min_splice_cover
  doc: min coverage for spliced transcripts (default:80)
  type: long
  inputBinding:
    prefix: --minsplicecover
- id: in_min_frag_score
  doc: min score of a spliced fragment (default:18)
  type: long
  inputBinding:
    prefix: --minfragscore
- id: in_splice_score_scale
  doc: report spliced alignment with score s only if <f>*s is larger than next best
    spliced alignment (default:0.900000)
  type: double
  inputBinding:
    prefix: --splicescorescale
- id: in_max_split_evalue
  doc: max evalue for splits (default:50.000000)
  type: long
  inputBinding:
    prefix: --maxsplitevalue
- id: in_drop_off
  doc: dropoff parameter for extension (default:8)
  type: long
  inputBinding:
    prefix: --dropoff
- id: in_jump
  doc: search seeds with jump size <n> (0=automatic) (default:0)
  type: long
  inputBinding:
    prefix: --jump
- id: in_order
  doc: sorts the output by chromsome and position (might take a while!)
  type: boolean
  inputBinding:
    prefix: --order
- id: in_max_pair_insert_size
  doc: maximum size of the inserts (paired end) in case of multiple hits (default:200000)
  type: long
  inputBinding:
    prefix: --maxpairinsertsize
- id: in_max_interval
  doc: maximum width of a suffix array interval, i.e. a query seed will be omitted
    if it matches more than <n> times (default:100)
  type: long
  inputBinding:
    prefix: --maxinterval
- id: in_check_idx
  doc: check index
  type: boolean
  inputBinding:
    prefix: --checkidx
- id: in_extension_penalty
  doc: penalty for a mismatch during extension (default:4)
  type: long
  inputBinding:
    prefix: --extensionpenalty
- id: in_max_out
  doc: maximum number of alignments that will be reported. If set to zero, all alignments
    will be reported (default:0)
  type: long
  inputBinding:
    prefix: --maxout
- id: in_skip_id_check
  doc: do not check whether the fastq ids of mates / paired ends match. Instead, the
    first mate (-q) will be used for output only.
  type: boolean
  inputBinding:
    prefix: --skipidcheck
- id: in_show_align
  doc: show alignments
  type: boolean
  inputBinding:
    prefix: --showalign
- id: in_no_head
  doc: do not output header
  type: boolean
  inputBinding:
    prefix: --nohead
- id: in_full_name
  doc: write full query name (no trunctation at whitespace)
  type: boolean
  inputBinding:
    prefix: --fullname
- id: in_be_svoc_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -besVOcf
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_basename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bam_aba_fix_oid_a
  doc: generate a bam output (-o <filename> required)
  type: File
  outputBinding:
    glob: $(inputs.in_bam_aba_fix_oid_a)
cwlVersion: v1.1
baseCommand:
- segemehl.x
