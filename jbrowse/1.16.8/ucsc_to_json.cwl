class: CommandLineTool
id: ../../../ucsc_to_json.pl.cwl
inputs:
- id: ucsc_to_json_do_tpl
  doc: --in <database dump dir>                       \ [ --out <output directory>
    ]                   \ [ --track <table name> ]                       \ [ --cssClass
    <class> ]                         \ [ --primaryName <name column> ]                \
    [ --arrowheadClass <class> ]                   \ [ --subfeatureClasses <subfeature
    class map> ] \ [ --clientConfig <JSON client config> ]        \ [ --nclChunk <NCL
    chunk size in bytes> ]       \ [ --compress ]                                 \
    [ --sortMem <sort memory size> ]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ucsc-to-json.pl
