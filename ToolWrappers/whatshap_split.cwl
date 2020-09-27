class: CommandLineTool
id: whatshap_split.cwl
inputs:
- id: in_output_hone
  doc: "Output file to write reads from Haplotype 1 to. Use\nending .gz to create\
    \ gzipped file."
  type: File
  inputBinding:
    prefix: --output-h1
- id: in_output_h_two
  doc: "Output file to write reads from Haplotype 2 to. Use\nending .gz to create\
    \ gzipped file."
  type: File
  inputBinding:
    prefix: --output-h2
- id: in_output_untagged
  doc: "Output file to write untagged reads to. Use ending .gz\nto create gzipped\
    \ file."
  type: File
  inputBinding:
    prefix: --output-untagged
- id: in_add_untagged
  doc: Add reads without tag to both H1 and H2 output
  type: boolean
  inputBinding:
    prefix: --add-untagged
- id: in_discard_unknown_reads
  doc: "Only check the haplotype of reads listed in the\nhaplotag list file. Reads\
    \ (read names) not contained\nin this file will be discarded. In the default case\
    \ (=\nkeep unknown reads), those reads would be considered\nuntagged and end up\
    \ in the respective output file.\nPlease be sure that the read names match between\
    \ the\ninput FASTQ/BAM and the haplotag list file."
  type: boolean
  inputBinding:
    prefix: --discard-unknown-reads
- id: in_read_lengths_histogram
  doc: "Output file to write read lengths histogram to in tab\nseparated format.\n"
  type: File
  inputBinding:
    prefix: --read-lengths-histogram
- id: in_reads
  doc: Input FASTQ/BAM file with reads (FASTQ can be gzipped)
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: "Tab-separated list with (at least) two columns\n<readname> and <haplotype>\
    \ (can be gzipped).\nCurrently, the two haplotypes have to be named H1 and\nH2\
    \ (or none). Alternatively, the output of the\n\"haplotag\" command can be used\
    \ (4 columns), and this\nis required for using the \"--only-largest-block\"\n\
    option (need phaseset and chromosome info)."
  type: string
  inputBinding:
    position: 1
- id: in_streams_dot
  doc: --only-largest-block  Only consider reads to be tagged if they belong to the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_hone
  doc: "Output file to write reads from Haplotype 1 to. Use\nending .gz to create\
    \ gzipped file."
  type: File
  outputBinding:
    glob: $(inputs.in_output_hone)
- id: out_output_h_two
  doc: "Output file to write reads from Haplotype 2 to. Use\nending .gz to create\
    \ gzipped file."
  type: File
  outputBinding:
    glob: $(inputs.in_output_h_two)
- id: out_output_untagged
  doc: "Output file to write untagged reads to. Use ending .gz\nto create gzipped\
    \ file."
  type: File
  outputBinding:
    glob: $(inputs.in_output_untagged)
- id: out_read_lengths_histogram
  doc: "Output file to write read lengths histogram to in tab\nseparated format.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_read_lengths_histogram)
cwlVersion: v1.1
baseCommand:
- whatshap
- split
