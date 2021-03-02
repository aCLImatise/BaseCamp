class: CommandLineTool
id: nunit_console4.cwl
inputs:
- id: in_fixture
  doc: 'Test fixture to be loaded (Short format: -load=STR)'
  type: string?
  inputBinding:
    prefix: -fixture
- id: in_run
  doc: Name of the test to run
  type: string?
  inputBinding:
    prefix: -run
- id: in_config
  doc: Project configuration to load
  type: string?
  inputBinding:
    prefix: -config
- id: in_xml
  doc: Name of XML output file
  type: File?
  inputBinding:
    prefix: -xml
- id: in_transform
  doc: Name of transform file
  type: File?
  inputBinding:
    prefix: -transform
- id: in_xml_console
  doc: Display XML to the console
  type: boolean?
  inputBinding:
    prefix: -xmlConsole
- id: in_output
  doc: 'File to receive test output (Short format: -out=STR)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_err
  doc: File to receive test error output
  type: File?
  inputBinding:
    prefix: -err
- id: in_labels
  doc: Label each test in stdOut
  type: boolean?
  inputBinding:
    prefix: -labels
- id: in_include
  doc: List of categories to include
  type: string?
  inputBinding:
    prefix: -include
- id: in_exclude
  doc: List of categories to exclude
  type: string?
  inputBinding:
    prefix: -exclude
- id: in_domain
  doc: AppDomain Usage for Tests
  type: string?
  inputBinding:
    prefix: -domain
- id: in_no_shadow
  doc: Disable shadow copy when running in separate domain
  type: boolean?
  inputBinding:
    prefix: -noshadow
- id: in_no_thread
  doc: Disable use of a separate thread for tests
  type: boolean?
  inputBinding:
    prefix: -nothread
- id: in_wait
  doc: Wait for input before closing console window
  type: boolean?
  inputBinding:
    prefix: -wait
- id: in_nologo
  doc: Do not display the logo
  type: boolean?
  inputBinding:
    prefix: -nologo
- id: in_no_dots
  doc: Do not display progress
  type: boolean?
  inputBinding:
    prefix: -nodots
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_xml
  doc: Name of XML output file
  type: File?
  outputBinding:
    glob: $(inputs.in_xml)
- id: out_output
  doc: 'File to receive test output (Short format: -out=STR)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_err
  doc: File to receive test error output
  type: File?
  outputBinding:
    glob: $(inputs.in_err)
hints: []
cwlVersion: v1.1
baseCommand:
- nunit-console4
