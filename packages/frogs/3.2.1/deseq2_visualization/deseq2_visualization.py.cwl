class: CommandLineTool
id: deseq2_visualization.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var
  doc: variable that you want to test.
  type: string?
  inputBinding:
    prefix: --var
- id: in_mod_one
  doc: "one value of the tested variable you want to compare\n(if more than 2 value\
    \ in your experiement variable\nanalyzed.)"
  type: long?
  inputBinding:
    prefix: --mod1
- id: in_mod_two
  doc: "second value of the tested variable you want to\ncompare.(if more than 2 value\
    \ in your experiement\nvariable analyzed.)"
  type: long?
  inputBinding:
    prefix: --mod2
- id: in_pad_j
  doc: "the adjusted p-value threshold to defined OTU as\ndifferentially abundant.\
    \ [Default: 0.05]"
  type: double?
  inputBinding:
    prefix: --padj
- id: in_phylo_seq_data
  doc: "The path to the RData file containing a phyloseq\nobject (result of FROGS\
    \ Phyloseq Import Data)"
  type: File?
  inputBinding:
    prefix: --phyloseqData
- id: in_dds
  doc: "The path to the Rdata file containing the DESeq dds\nobject (result of FROGS\
    \ DESeq2 Preprocess)"
  type: File?
  inputBinding:
    prefix: --dds
- id: in_html
  doc: "The HTML file containing the graphs. [Default:\nDESeq2_visualization.html]"
  type: File?
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- deseq2_visualization.py
