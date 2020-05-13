class: CommandLineTool
id: Tutorial_pipeline03.pl.cwl
inputs:
- id: out
  doc: Destination folder for the output Track Hub.
  type: boolean
  inputBinding:
    prefix: --out
- id: baseurl
  doc: BaseURL used within the Track Hub. This URL will be included verbatim in the
    resulting Track Hub. It is crucial that this URl is valid, else the resulting
    Track Hub will be broken.
  type: boolean
  inputBinding:
    prefix: --baseurl
- id: big_beds
  doc: 'URLs pointing to big bed files to be included in the trackhub. Multiple URLs
    are separated by the character #.'
  type: boolean
  inputBinding:
    prefix: --bigbeds
- id: bigwigs
  doc: 'URLs pointing to big wig files to be included in the trackhub. Multiple URLs
    are separated by the character #. It is possible to create a multiwig container
    by providing 2 URLs instead of one separated by comma character ,. E.g. http://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw
    yields a multi big wig container displaying bar as positive reads in green and
    bar2 as negative 3 red colored reads in the same track and additionally bar3 in
    an own track colored blue.'
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- Tutorial_pipeline03.pl
