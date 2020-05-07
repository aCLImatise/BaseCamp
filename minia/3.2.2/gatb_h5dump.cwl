class: CommandLineTool
id: gatb_h5dump.cwl
inputs:
- id: options
  doc: -h,   --help         Print a usage message and exit -V,   --version      Print
    version number and exit
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ',   --contents     Print a list of the file contents and exit Optional value
    1 also prints attributes.'
  type: boolean
  inputBinding:
    prefix: -n
- id: b
  doc: ',   --superblock   Print the content of the super block'
  type: boolean
  inputBinding:
    prefix: -B
- id: h
  doc: ',   --header       Print the header only; no data is displayed'
  type: boolean
  inputBinding:
    prefix: -H
- id: file_driver
  doc: Specify which driver to open the file with
  type: string
  inputBinding:
    prefix: --filedriver
- id: output
  doc: Output raw data into file F
  type: string
  inputBinding:
    prefix: --output
- id: binary
  doc: Binary file output, of form B
  type: string
  inputBinding:
    prefix: --binary
- id: ddl
  doc: Output ddl text into file F Use blank(empty) filename F to suppress ddl display
  type: string
  inputBinding:
    prefix: --ddl
- id: attribute
  doc: Print the specified attribute If an attribute name contains a slash (/), escape
    the slash with a preceding backslash (\). (See example section below.)
  type: string
  inputBinding:
    prefix: --attribute
- id: dataset
  doc: Print the specified dataset
  type: string
  inputBinding:
    prefix: --dataset
- id: group
  doc: Print the specified group and all members
  type: string
  inputBinding:
    prefix: --group
- id: soft_link
  doc: Print the value(s) of the specified soft link
  type: string
  inputBinding:
    prefix: --soft-link
- id: datatype
  doc: Print the specified named datatype
  type: string
  inputBinding:
    prefix: --datatype
- id: any_path
  doc: Print any attribute, dataset, group, datatype, or link that matches P P can
    be the absolute path or just a relative path.
  type: string
  inputBinding:
    prefix: --any_path
- id: a
  doc: ',   --onlyattr     Print the header and value of attributes Optional value
    0 suppresses printing attributes.'
  type: boolean
  inputBinding:
    prefix: -A
- id: vds_view_first_missing
  doc: the VDS bounds to first missing mapped elements.
  type: string
  inputBinding:
    prefix: --vds-view-first-missing
- id: vds_gap_size
  doc: Set the missing file gap size, N=non-negative integers
  type: string
  inputBinding:
    prefix: --vds-gap-size
- id: i
  doc: ',   --object-ids   Print the object ids'
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: ',   --properties   Print dataset filters, storage layout and fill value'
  type: boolean
  inputBinding:
    prefix: -p
- id: packed_bits
  doc: Print packed bits as unsigned integers, using mask format L for an integer
    dataset specified with option -d. L is a list of offset,length values, separated
    by commas. Offset is the beginning bit in the data value and length is the number
    of bits of the mask.
  type: string
  inputBinding:
    prefix: --packedbits
- id: r
  doc: ',   --region       Print dataset pointed by region references'
  type: boolean
  inputBinding:
    prefix: -R
- id: no_compact_subset
  doc: Disable compact form of subsetting and allow the use of "[" in dataset names.
  type: boolean
  inputBinding:
    prefix: --no-compact-subset
- id: width
  doc: Set the number of columns of output. A value of 0 (zero) sets the number of
    columns to the maximum (65535). Default width is 80 columns.
  type: string
  inputBinding:
    prefix: --width
- id: x
  doc: ',   --xml          Output in XML using Schema'
  type: boolean
  inputBinding:
    prefix: -x
- id: u
  doc: ',   --use-dtd      Output in XML using DTD'
  type: boolean
  inputBinding:
    prefix: -u
- id: xml_dtd
  doc: Use the DTD or schema at U
  type: string
  inputBinding:
    prefix: --xml-dtd
- id: xml_ns
  doc: "(XML Schema) Use qualified names n the XML \":\": no namespace, default: \"\
    hdf5:\" E.g., to dump a file called `-f', use h5dump -- -f"
  type: string
  inputBinding:
    prefix: --xml-ns
- id: s
  doc: ',  --start=START    Offset of start of subsetting selection'
  type: string
  inputBinding:
    prefix: -s
- id: stride
  doc: Hyperslab stride
  type: string
  inputBinding:
    prefix: --stride
- id: c
  doc: ',  --count=COUNT    Number of blocks to include in selection'
  type: string
  inputBinding:
    prefix: -c
- id: k
  doc: ',  --block=BLOCK    Size of block in hyperslab'
  type: string
  inputBinding:
    prefix: -k
- id: d
  doc: (dataset) is used. B is an optional argument, defaults to NATIVE
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- gatb-h5dump
