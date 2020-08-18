class: CommandLineTool
id: ../../../pefilter.cwl
inputs:
- id: arg_input_bam
  doc: '[ --infile ] arg          Input BAM file. It should be indexed.'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_output_bam
  doc: '[ --outfile ] arg         Output BAM file. To save the filtered BAM file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: library_preparation_protocol
  doc: '[ --protocol ]            Library preparation protocol. 0: traditional  library
    protocol by shotgun approach; 1:  traditional library protocol by Nextera  transposase
    approach; 2: Pico. Default:  traditional protocol by shotgun.'
  type: boolean
  inputBinding:
    prefix: -p
- id: report_pe_statistics
  doc: '[ --statsonly ]           Report PE tag statistics only but not generate  filtered
    BAM file. The statitics will show in  stdout.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_number_threads
  doc: '[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many
    threads. One thread may occupy up to 5GB memory  for a 50GB BAM file. Default:
    1.'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_valid_tag
  doc: '[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for  two
    ends. `N` means mapping not found. Multiple  tag pairs can be specified. For example,
    `-d  ++,+- -d -+,--`'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- pefilter
