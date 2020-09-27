class: CommandLineTool
id: FGAP.cwl
inputs:
- id: in__draftfile_draft
  doc: "/--draft-file        Draft genome file [fasta format - Ex: 'draft.fasta']"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__datasetsfiles_list
  doc: "/--datasets-files    List of datasets files to close gaps [fasta format -\
    \ Ex: 'dataset1.fasta,dataset2.fasta']"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__min_score
  doc: '/--min-score         Min Score (raw) to return results from BLAST (integer)
    - Default: 25'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__maxevalue_evalue
  doc: '/--max-evalue        Max E-Value to return results from BLAST (float) - Default:
    1e-7'
  type: boolean
  inputBinding:
    prefix: -e
- id: in__minidentity_min
  doc: '/--min-identity      Min identity (%) to return results from BLAST (integer
    [0-100]) - Default: 70'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__contigendlength_length
  doc: '/--contig-end-length Length (bp) of contig ends to perform BLAST alignment
    (integer) - Default: 300'
  type: boolean
  inputBinding:
    prefix: -C
- id: in__edgetrimlength_length
  doc: '/--edge-trim-length  Length of ignored bases (bp) upstream and downstrem of
    the gap (integer) - Default: 0'
  type: boolean
  inputBinding:
    prefix: -T
- id: in__maxremovelength_max
  doc: '/--max-remove-length Max number of bases (bp) that can be removed (integer)
    - Default: 500'
  type: boolean
  inputBinding:
    prefix: -R
- id: in__maxinsertlength_max
  doc: '/--max-insert-length Max number of bases (bp) that can be inserted (integer)
    - Default: 500'
  type: boolean
  inputBinding:
    prefix: -I
- id: in__positivegap_enable
  doc: '/--positive-gap      Enable closing of positive gaps (with insertion) (integer
    [0-1]) - Default: 1'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__zerogap_enable
  doc: '/--zero-gap          Enable closing of zero gaps (without insert any base)
    (integer [0-1]) - Default: 0'
  type: boolean
  inputBinding:
    prefix: -z
- id: in__negativegap_enable
  doc: '/--negative-gap      Enable closing of negative gaps (overlapping contig ends)
    (integer [0-1]) - Default: 0'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__gapchar_base
  doc: "/--gap-char                          Base that represents the gap (char) -\
    \ Default: 'N'"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__blastpath_blast
  doc: "/--blast-path                        Blast+ package path (only makeblastdb\
    \ and blastn are needed, version 2.2.28+ or higher) - Default: ''"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__blastalignmentparameters_blast
  doc: "/--blast-alignment-parameters        BLAST alignment parameters (opengap,extendgap,match,mismatch,wordsize)\
    \ - Default: '1,1,1,-3,15'"
  type: boolean
  inputBinding:
    prefix: -l
- id: in__blastmaxresults_max
  doc: '/--blast-max-results                 Max results from BLAST for each query
    (integer) - Default: 200'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__threads_number
  doc: '/--threads                           Number of threads (integer) - Default:
    1'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__moreoutput_more
  doc: '/--more-output       More output files with gap regions after and before gap
    closing (integer [0-1]) - Default: 0'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__outputprefix_output
  doc: "/--output-prefix     Output prefix [File or folder - Ex: 'out' or 'out_folder/out'\
    \ ] - Default: 'output_fgap'"
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputprefix_output
  doc: "/--output-prefix     Output prefix [File or folder - Ex: 'out' or 'out_folder/out'\
    \ ] - Default: 'output_fgap'"
  type: File
  outputBinding:
    glob: $(inputs.in__outputprefix_output)
cwlVersion: v1.1
baseCommand:
- FGAP
