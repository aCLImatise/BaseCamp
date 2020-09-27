class: CommandLineTool
id: gsutil_cat.cwl
inputs:
- id: in_causes_gsutil_range
  doc: "Causes gsutil to output just the specified byte range of the\nobject. Ranges\
    \ are can be of these forms:\nstart-end (e.g., -r 256-5939)\nstart-    (e.g.,\
    \ -r 256-)\n-numbytes (e.g., -r -5)\nwhere offsets start at 0, start-end means\
    \ to return bytes start\nthrough end (inclusive), start- means to return bytes\
    \ start\nthrough the end of the object, and -numbytes means to return the\nlast\
    \ numbytes of the object. For example:\ngsutil cat -r 256-939 gs://bucket/object\n\
    returns bytes 256 through 939, while:\ngsutil cat -r -5 gs://bucket/object\nreturns\
    \ the final 5 bytes of the object.\n"
  type: long
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- cat
