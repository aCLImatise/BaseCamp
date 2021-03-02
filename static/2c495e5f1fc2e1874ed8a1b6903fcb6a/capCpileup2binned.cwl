class: CommandLineTool
id: capCpileup2binned.cwl
inputs:
- id: in_pileupfile_input_pileup
  doc: pileupfile  is the input pile-up file name
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_outfile_file_name
  doc: outfile     is the file name for the output bedGraph
  type: File?
  inputBinding:
    prefix: -o
- id: in_chromsizes_file_name
  doc: chromsizes  is the file name for the list of chromosome sizes
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_target_name_target
  doc: target      is the name of the target
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_bin_wind_pileup
  doc: "bin wind    pile-up will be up into sliding window bins with step\nsize of\
    \ 'bin' and window width of 'wind'"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_totalreads_pileup_normalized
  doc: "totalreads  pile-up will be normalized to reads per million\ngenome wide;\
    \ requires total number of reads (available\nfrom capC main process report file;\
    \ includes both inter\nand intra chromosomal).\n"
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_file_name
  doc: outfile     is the file name for the output bedGraph
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- capCpileup2binned
