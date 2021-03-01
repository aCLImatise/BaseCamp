class: CommandLineTool
id: macs2_refinepeak.cwl
inputs:
- id: in_candidate_peak_file
  doc: Candidate peak file in BED format. REQUIRED.
  type: File?
  inputBinding:
    prefix: -b
- id: in_i_file
  doc: "ChIP-seq alignment file. If multiple files are given\nas '-t A B C', then\
    \ they will all be read and\ncombined. Note that pair-end data is not supposed\
    \ to\nwork with this command. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --ifile
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or\n\"BOWTIE\". The default AUTO option will\
    \ let 'macs2\nrefinepeak' decide which format the file is. Please\ncheck the definition\
    \ in README file if you choose\nELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE. DEFAULT:\n\
    \"AUTO\""
  type: string?
  inputBinding:
    prefix: --format
- id: in_cut_off
  doc: 'Cutoff DEFAULT: 5'
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_window_size
  doc: "Scan window size on both side of the summit (default:\n100bp)"
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_buffer_size
  doc: "Buffer size for incrementally increasing internal\narray size to store reads\
    \ alignment information. In\nmost cases, you don't have to change this parameter.\n\
    However, if there are large number of\nchromosomes/contigs/scaffolds in your alignment,\
    \ it's\nrecommended to specify a smaller buffer size in order\nto decrease memory\
    \ usage (but it will take longer time\nto read alignment files). Minimum memory\
    \ requested for\nreading an alignment file is about # of CHROMOSOME *\nBUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_verbose
  doc: "Set verbose level. 0: only show critical message, 1:\nshow additional warning\
    \ message, 2: show process\ninformation, 3: show debug messages. If you want to\n\
    know where are the duplicate reads, use 3. DEFAULT:2"
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_ofile
  doc: Output file name. Mutually exclusive with --o-prefix.
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_o_prefix
  doc: Output file prefix. Mutually exclusive with
  type: File?
  inputBinding:
    prefix: --o-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_ofile
  doc: Output file name. Mutually exclusive with --o-prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
- id: out_o_prefix
  doc: Output file prefix. Mutually exclusive with
  type: File?
  outputBinding:
    glob: $(inputs.in_o_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- macs2
- refinepeak
