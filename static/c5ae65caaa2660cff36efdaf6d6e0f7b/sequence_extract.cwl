class: CommandLineTool
id: sequence_extract.cwl
inputs:
- id: length
  doc: "print sequence if it is at least 'min' bases and at most 'max' bases long\
    \ a 'baselist' is a set of integers formed from any combination of the following,\
    \ seperated by a comma: num       a single number bgn-end   a range of numbers:\
    \  bgn <= end bases are spaced-based; -bases 0-2,4 will print the bases between\
    \ the first two spaces (the first two bases) and the base after the fourth space\
    \ (the fifth base). a 'seqlist' is a set of integers formed from any combination\
    \ of the following, seperated by a comma: num       a single number bgn-end  \
    \ a range of numbers:  bgn <= end sequences are 1-based; -sequences 1,3-5 will\
    \ print the first, third, fourth and fifth sequences."
  type: long
  inputBinding:
    prefix: -length
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence
- extract
