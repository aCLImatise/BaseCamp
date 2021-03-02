class: CommandLineTool
id: analyzeSNPs.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: boolean?
  inputBinding:
    prefix: -bank
- id: in_t_cov
  doc: print snp positions in TCOV format (DEFAULT)
  type: boolean?
  inputBinding:
    prefix: -tcov
- id: in_report
  doc: print a report on the snps
  type: boolean?
  inputBinding:
    prefix: -report
- id: in_all
  doc: print all positions (not just SNP positions)
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_skip_header
  doc: Skip header
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_skip_printing_bases
  doc: Skip printing bases
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_print_readnames
  doc: Print readnames
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_print_libid
  doc: Print libid
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_print_qvs
  doc: Print qvs
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_print_reads_majority
  doc: Don't print reads in majority
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_min_snps
  doc: '<val> Set Minimum number of consistent disagreeing reads to report (default:
    1)'
  type: boolean?
  inputBinding:
    prefix: -minsnps
- id: in_cum_qv
  doc: '<val> Set Minimum conflicting cummulative qv to report (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -cumqv
- id: in_min_qv
  doc: '<val> Set Minimum conflicting qv to report (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -minqv
- id: in_eid
  doc: Display eids
  type: boolean?
  inputBinding:
    prefix: -eid
- id: in_iid
  doc: Display iids
  type: boolean?
  inputBinding:
    prefix: -iid
- id: in_display_based_coordinates
  doc: Display 1-based gapped coordinates
  type: boolean?
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyzeSNPs
