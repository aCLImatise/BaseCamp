class: CommandLineTool
id: pefilter.cwl
inputs:
- id: in_arg_input_bam
  doc: '[ --infile ] arg          Input BAM file. It should be indexed.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_output_bam
  doc: '[ --outfile ] arg         Output BAM file. To save the filtered BAM file.'
  type: File
  inputBinding:
    prefix: -o
- id: in_library_preparation_protocol
  doc: "[ --protocol ]            Library preparation protocol. 0: traditional\nlibrary\
    \ protocol by shotgun approach; 1:\ntraditional library protocol by Nextera\n\
    transposase approach; 2: Pico. Default:\ntraditional protocol by shotgun."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_report_pe_statistics
  doc: "[ --statsonly ]           Report PE tag statistics only but not generate\n\
    filtered BAM file. The statitics will show in\nstdout."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_number_threads
  doc: "[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many\n\
    threads. One thread may occupy up to 5GB memory\nfor a 50GB BAM file. Default:\
    \ 1."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_valid_tag
  doc: "[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for\n\
    two ends. `N` means mapping not found. Multiple\ntag pairs can be specified. For\
    \ example, `-d\n++,+- -d -+,--`"
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_bam
  doc: '[ --outfile ] arg         Output BAM file. To save the filtered BAM file.'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_bam)
cwlVersion: v1.1
baseCommand:
- pefilter
