#!/usr/bin/env cwl-runner

baseCommand:
- pefilter
class: CommandLineTool
cwlVersion: v1.0
id: pefilter
inputs:
- doc: '[ --infile ] arg          Input BAM file. It should be indexed.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --outfile ] arg         Output BAM file. To save the filtered BAM file.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --pico ]                Pico library preparation protocol. Default:  traditional
    protocol.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --statsonly ]           Report PE tag statistics only but not generate  filtered
    BAM file. The statitics will show in  stdout.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many
    threads. One thread may occupy up to 5GB memory  for a 50GB BAM file. Default:
    1.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for  two
    ends. `N` means mapping not found. Multiple  tag pairs can be specified. For example,
    `-d  ++,+- -d -+,--`'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
