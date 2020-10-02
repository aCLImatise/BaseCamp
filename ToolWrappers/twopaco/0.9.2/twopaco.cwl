class: CommandLineTool
id: twopaco.cwl
inputs:
- id: in__outfile_file
  doc: ",  --outfile <file name>\nOutput file name prefix"
  type: File
  inputBinding:
    prefix: -o
- id: in_test
  doc: Run tests
  type: boolean
  inputBinding:
    prefix: --test
- id: in_tmpdir
  doc: Temporary directory name
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in__threads_integernumber
  doc: ",  --threads <integer>\nNumber of worker threads"
  type: long
  inputBinding:
    prefix: -t
- id: in__rounds_integernumber
  doc: ",  --rounds <integer>\nNumber of computation rounds"
  type: long
  inputBinding:
    prefix: -r
- id: in__hashfnumber_integernumber
  doc: ",  --hashfnumber <integer>\nNumber of hash functions"
  type: long
  inputBinding:
    prefix: -q
- id: in__filtersize_integerrequired
  doc: ",  --filtersize <integer>\n(required)  Size of the filter"
  type: long
  inputBinding:
    prefix: -f
- id: in__kvalue_oddcvalue
  doc: ",  --kvalue <oddc>\nValue of k"
  type: string
  inputBinding:
    prefix: -k
- id: in_two_paco
  doc: "[-o <file name>] [--test] [--tmpdir <directory name>] [-t\n<integer>] [-r\
    \ <integer>] [-q <integer>] -f <integer> [-k\n<oddc>] [--] [--version] [-h] <fasta\
    \ files with genomes> ..."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfile_file
  doc: ",  --outfile <file name>\nOutput file name prefix"
  type: File
  outputBinding:
    glob: $(inputs.in__outfile_file)
cwlVersion: v1.1
baseCommand:
- twopaco
