#!/usr/bin/env cwl-runner

baseCommand:
- FastqExtractBarcode
class: CommandLineTool
cwlVersion: v1.0
id: fastqextractbarcode
inputs:
- doc: input fastq file1.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: output filename for main fastq.
  id: out_main
  inputBinding:
    prefix: -out_main
  type: string
- doc: "number of bases from the beginning of reads to use as barcodes. Default value:\
    \ '0'"
  id: cut
  inputBinding:
    prefix: -cut
  type: long
- doc: "output filename for index fastq. Default value: 'index.fastq.gz'"
  id: out_index
  inputBinding:
    prefix: -out_index
  type: string
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
