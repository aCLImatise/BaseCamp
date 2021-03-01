class: CommandLineTool
id: h5diff.cwl
inputs:
- id: in_report
  doc: Report mode. Print differences.
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_quiet
  doc: Quiet mode. Do not produce output.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_enable_error_stack
  doc: Prints messages from the HDF5 error stack as they occur.
  type: boolean?
  inputBinding:
    prefix: --enable-error-stack
- id: in_follow_symlinks
  doc: "Follow symbolic links (soft links and external links and compare the)\nlinks'\
    \ target objects.\nIf symbolic link(s) with the same name exist in the files being\n\
    compared, then determine whether the target of each link is an existing\nobject\
    \ (dataset, group, or named datatype) or the link is a dangling\nlink (a soft\
    \ or external link pointing to a target object that does\nnot yet exist).\n- If\
    \ both symbolic links are dangling links, they are treated as being\nthe same;\
    \ by default, h5diff returns an exit code of 0.\nIf, however, --no-dangling-links\
    \ is used with --follow-symlinks,\nthis situation is treated as an error and h5diff\
    \ returns an\nexit code of 2.\n- If only one of the two links is a dangling link,they\
    \ are treated as\nbeing different and h5diff returns an exit code of 1.\nIf, however,\
    \ --no-dangling-links is used with --follow-symlinks,\nthis situation is treated\
    \ as an error and h5diff returns an\nexit code of 2.\n- If both symbolic links\
    \ point to existing objects, h5diff compares the\ntwo objects.\nIf any symbolic\
    \ link specified in the call to h5diff does not exist,\nh5diff treats it as an\
    \ error and returns an exit code of 2."
  type: boolean?
  inputBinding:
    prefix: --follow-symlinks
- id: in_no_dangling_links
  doc: "Must be used with --follow-symlinks option; otherwise, h5diff shows\nerror\
    \ message and returns an exit code of 2.\nCheck for any symbolic links (soft links\
    \ or external links) that do not\nresolve to an existing object (dataset, group,\
    \ or named datatype).\nIf any dangling link is found, this situation is treated\
    \ as an error\nand h5diff returns an exit code of 2."
  type: boolean?
  inputBinding:
    prefix: --no-dangling-links
- id: in_compare
  doc: List objects that are not comparable
  type: boolean?
  inputBinding:
    prefix: --compare
- id: in_nan
  doc: Avoid NaNs detection
  type: boolean?
  inputBinding:
    prefix: --nan
- id: in_count
  doc: Print differences up to C. C must be a positive integer.
  type: long?
  inputBinding:
    prefix: --count
- id: in_delta
  doc: "Print difference if (|a-b| > D). D must be a positive number. Where a\nis\
    \ the data point value in file1 and b is the data point value in file2.\nCan not\
    \ use with '-p' or '--use-system-epsilon'."
  type: long?
  inputBinding:
    prefix: --delta
- id: in_relative
  doc: "Print difference if (|(a-b)/b| > R). R must be a positive number. Where a\n\
    is the data point value in file1 and b is the data point value in file2.\nCan\
    \ not use with '-d' or '--use-system-epsilon'."
  type: long?
  inputBinding:
    prefix: --relative
- id: in_use_system_epsilon
  doc: "Print difference if (|a-b| > EPSILON), EPSILON is system defined value. Where\
    \ a\nis the data point value in file1 and b is the data point value in file2.\n\
    If the system epsilon is not defined,one of the following predefined\nvalues will\
    \ be used:\nFLT_EPSILON = 1.19209E-07 for floating-point type\nDBL_EPSILON = 2.22045E-16\
    \ for double precision type\nCan not use with '-p' or '-d'."
  type: boolean?
  inputBinding:
    prefix: --use-system-epsilon
- id: in_exclude_path
  doc: "\"path\"\nExclude the specified path to an object when comparing files or\
    \ groups.\nIf a group is excluded, all member objects will also be excluded.\n\
    The specified path is excluded wherever it occurs.\nThis flexibility enables the\
    \ same option to exclude either objects that\nexist only in one file or common\
    \ objects that are known to differ.\nWhen comparing files, \"path\" is the absolute\
    \ path to the excluded;\nobject; when comparing groups, \"path\" is similar to\
    \ the relative\npath from the group to the excluded object. This \"path\" can\
    \ be\ntaken from the first section of the output of the --verbose option.\nFor\
    \ example, if you are comparing the group /groupA in two files and\nyou want to\
    \ exclude /groupA/groupB/groupC in both files, the exclude\noption would read\
    \ as follows:\n--exclude-path \"/groupB/groupC\"\nIf there are multiple paths\
    \ to an object, only the specified path(s)\nwill be excluded; the comparison will\
    \ include any path not explicitly\nexcluded.\nThis option can be used repeatedly\
    \ to exclude multiple paths."
  type: File?
  inputBinding:
    prefix: --exclude-path
- id: in_mode_print_above
  doc: 'mode: print the above plus a list of objects and warnings'
  type: string?
  inputBinding:
    prefix: -v
- id: in_file_one
  doc: File name of the first HDF5 file
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: File name of the second HDF5 file
  type: long
  inputBinding:
    position: 1
- id: in_options
  doc: "-h, --help\nPrint a usage message and exit."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exclude_path
  doc: "\"path\"\nExclude the specified path to an object when comparing files or\
    \ groups.\nIf a group is excluded, all member objects will also be excluded.\n\
    The specified path is excluded wherever it occurs.\nThis flexibility enables the\
    \ same option to exclude either objects that\nexist only in one file or common\
    \ objects that are known to differ.\nWhen comparing files, \"path\" is the absolute\
    \ path to the excluded;\nobject; when comparing groups, \"path\" is similar to\
    \ the relative\npath from the group to the excluded object. This \"path\" can\
    \ be\ntaken from the first section of the output of the --verbose option.\nFor\
    \ example, if you are comparing the group /groupA in two files and\nyou want to\
    \ exclude /groupA/groupB/groupC in both files, the exclude\noption would read\
    \ as follows:\n--exclude-path \"/groupB/groupC\"\nIf there are multiple paths\
    \ to an object, only the specified path(s)\nwill be excluded; the comparison will\
    \ include any path not explicitly\nexcluded.\nThis option can be used repeatedly\
    \ to exclude multiple paths."
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude_path)
hints: []
cwlVersion: v1.1
baseCommand:
- h5diff
