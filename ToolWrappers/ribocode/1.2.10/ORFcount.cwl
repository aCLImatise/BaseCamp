class: CommandLineTool
id: ../../../ORFcount.cwl
inputs:
- id: in_stranded
  doc: "whether the data is strand-specific, reverse means\nreversed strand interpretation.\
    \ (default: yes)"
  type: string
  inputBinding:
    prefix: --stranded
- id: in_mina_qual
  doc: "skip all reads with alignment quality lower than the\ngiven minimum value\
    \ (default:10)"
  type: long
  inputBinding:
    prefix: --minaqual
- id: in_count_mode
  doc: "mode to handle reads overlapping more than one ORF\n(choices: union,intersection-strict;default:\n\
    intersection-strict)"
  type: string
  inputBinding:
    prefix: --count_mode
- id: in_gtf
  doc: "ORF gtf file generated by RiboCode,\ndefault:final_result"
  type: File
  inputBinding:
    prefix: --gtf
- id: in_rpf_mapping_file
  doc: "ribo-seq BAM/SAM file aligned to the genome, multiple\nfiles should be separated\
    \ with \",\""
  type: File
  inputBinding:
    prefix: --rpf_mapping_file
- id: in_first_exclude_codons
  doc: "excluding the reads aligned to the first few codons of\nthe ORF, default:15"
  type: long
  inputBinding:
    prefix: --first_exclude_codons
- id: in_last_exclude_codons
  doc: "excluding the reads aligned to the last few codons of\nthe ORF, default:5"
  type: long
  inputBinding:
    prefix: --last_exclude_codons
- id: in_exclude_min_orf
  doc: "the minimal length(nt) of ORF for excluding the reads\naligned to first and\
    \ last few codons, default:100"
  type: long
  inputBinding:
    prefix: --exclude_min_ORF
- id: in_min_read
  doc: minimal read length for the counting of RPF,default:26
  type: long
  inputBinding:
    prefix: --min_read
- id: in_max_read
  doc: maximal read length for the counting of RPF,default:34
  type: long
  inputBinding:
    prefix: --max_read
- id: in_output
  doc: "write out all ORF counts into a file, default is to\nwrite to standard output"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "write out all ORF counts into a file, default is to\nwrite to standard output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ORFcount
