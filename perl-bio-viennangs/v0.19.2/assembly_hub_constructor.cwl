class: CommandLineTool
id: assembly_hub_constructor.pl.cwl
inputs:
- id: fa
  doc: Input file in Fasta format.
  type: boolean
  inputBinding:
    prefix: --fa
- id: in_folder
  doc: Directory which contains all track files in BED/bigBed format. The resulting
    Assembly Hub will contain these files in their respective bigFile version.
  type: boolean
  inputBinding:
    prefix: --infolder
- id: out
  doc: Destination folder for the output Assembly Hub.
  type: boolean
  inputBinding:
    prefix: --out
- id: baseurl
  doc: BaseURL used within the Assembly Hub. This URL will be included verbatim in
    the resulting Assembly Hub. It is crucial that this URl is valid, else the resulting
    Assembly Hub will be broken.
  type: boolean
  inputBinding:
    prefix: --baseurl
- id: bigwigs
  doc: 'URLs pointing to big wig files to be included in the trackhub. Multiple URLs
    are separated by the star character #. It is possible to create a multiwig container
    by providing 2 URLs instead of one separated by comma character ,. E.g. http://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw
    yields a multi big wig container displaying bar as positive reads in green and
    bar2 as negative 3 red colored reads in the same track and additionally bar3 in
    an own track colored blue.'
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- assembly_hub_constructor.pl
