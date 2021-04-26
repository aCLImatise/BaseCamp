class: CommandLineTool
id: coolbox_add_ARGS.cwl
inputs:
- id: in_current_range
  doc: frames
  type: string
  inputBinding:
    position: 0
- id: in_add
  doc: 'Add a Element(Track, Coverage, Feature), for example: coolbox add XAxis'
  type: string
  inputBinding:
    position: 0
- id: in_end_with
  doc: End the with block
  type: string
  inputBinding:
    position: 1
- id: in_gen_notebook
  doc: Generate The notebook contain codes for run coolbox browser.
  type: string
  inputBinding:
    position: 2
- id: in_go_to
  doc: Goto a genome range.
  type: string
  inputBinding:
    position: 3
- id: in_joint_view
  doc: Start a new frame positioned at the specified frame_pos in the final joint
    view. The center frame should be a single Cool, HicMat, DotHic track.
  type: string
  inputBinding:
    position: 4
- id: in_load_module
  doc: 'Import custom tracks from a module/package for example:'
  type: string
  inputBinding:
    position: 5
- id: in_plot
  doc: Draw a figure within a genome range and save to file
  type: string
  inputBinding:
    position: 6
- id: in_print_source
  doc: Print the browser composing code.
  type: string
  inputBinding:
    position: 7
- id: in_run_j_up_y_ter
  doc: Create a notebook according to command line, then start a jupyter process.
  type: string
  inputBinding:
    position: 8
- id: in_run_webapp
  doc: Run a independent coolbox browser web app. (Create notebook and run voila)
  type: string
  inputBinding:
    position: 9
- id: in_set_genome
  doc: Set reference genome for browser object.
  type: string
  inputBinding:
    position: 10
- id: in_show_doc
  doc: 'Print the document of specified Element type. For example: coolbox show_doc
    Cool'
  type: string
  inputBinding:
    position: 11
- id: in_source
  doc: "start_with\nStart a 'with' block, apply the element to all elements within\
    \ the block."
  type: string
  inputBinding:
    position: 12
- id: in_version
  doc: print coolbox version
  type: string
  inputBinding:
    position: 13
- id: in_frame_pos
  doc: genome
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- coolbox
- add
- ARGS
