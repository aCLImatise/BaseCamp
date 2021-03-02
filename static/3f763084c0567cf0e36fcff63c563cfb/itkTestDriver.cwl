class: CommandLineTool
id: itkTestDriver.cwl
inputs:
- id: in_add_before_libpath
  doc: "Add a path to the library path environment. This option take care of\nchoosing\
    \ the right environment variable for your system.\nThis option can be used several\
    \ times."
  type: File?
  inputBinding:
    prefix: --add-before-libpath
- id: in_add_before_env
  doc: "VALUE\nAdd a VALUE to the variable name in the environment.\nThe seperator\
    \ used is the default one on the system.\nThis option can be used several times."
  type: string?
  inputBinding:
    prefix: --add-before-env
- id: in_add_before_env_with_sep
  doc: "VALUE SEP\nAdd a VALUE to the variable name in the environment using the provided\
    \ separator.\nThis option can be used several times."
  type: string?
  inputBinding:
    prefix: --add-before-env-with-sep
- id: in_remove_env
  doc: "Remove the variable name from the environment.\nThis option can be used several\
    \ times."
  type: string?
  inputBinding:
    prefix: --remove-env
- id: in_compare
  doc: "BASELINE\nCompare the TEST image to the BASELINE one.\nThis option can be\
    \ used several times."
  type: string?
  inputBinding:
    prefix: --compare
- id: in_compare_md_five
  doc: "md5hash0 [ md5hash1 ... ]\nCompare the TEST image file's md5 hash to the provided\
    \ hash.\nmd5hash0 is required and assumed to be a hash.\nAdditional arguments\
    \ are considered hashes when the string is 32 hexi-decimal characters.\nThis option\
    \ can be used several times for multiple comparisons."
  type: long?
  inputBinding:
    prefix: --compare-MD5
- id: in_with_threads
  doc: Use at most THREADS threads.
  type: string?
  inputBinding:
    prefix: --with-threads
- id: in_without_threads
  doc: Use at most one thread.
  type: boolean?
  inputBinding:
    prefix: --without-threads
- id: in_compare_number_of_pixels_tolerance
  doc: "When comparing images with --compare, allow TOLERANCE pixels to differ.\n\
    Default is 0."
  type: long?
  inputBinding:
    prefix: --compareNumberOfPixelsTolerance
- id: in_compare_radius_tolerance
  doc: Default is 0.
  type: long?
  inputBinding:
    prefix: --compareRadiusTolerance
- id: in_compare_intensity_tolerance
  doc: Default is 2.0.
  type: double?
  inputBinding:
    prefix: --compareIntensityTolerance
- id: in_no_process
  doc: The test driver will not invoke any process.
  type: boolean?
  inputBinding:
    prefix: --no-process
- id: in_full_output
  doc: Causes the full output of the test to be passed to cdash.
  type: boolean?
  inputBinding:
    prefix: --full-output
- id: in_redirect_output
  doc: Redirects the test output to the file TEST_OUTPUT.
  type: File?
  inputBinding:
    prefix: --redirect-output
- id: in_prg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_redirect_output
  doc: Redirects the test output to the file TEST_OUTPUT.
  type: File?
  outputBinding:
    glob: $(inputs.in_redirect_output)
hints: []
cwlVersion: v1.1
baseCommand:
- itkTestDriver
