class: CommandLineTool
id: pefilter.cwl
inputs:
- id: i
  doc: '[ --infile ] arg          Input BAM file. It should be indexed.'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --outfile ] arg         Output BAM file. To save the filtered BAM file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '[ --pico ]                Pico library preparation protocol. Default:  traditional
    protocol.'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: '[ --statsonly ]           Report PE tag statistics only but not generate  filtered
    BAM file. The statitics will show in  stdout.'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many
    threads. One thread may occupy up to 5GB memory  for a 50GB BAM file. Default:
    1.'
  type: boolean
  inputBinding:
    prefix: -t
- id: d
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
