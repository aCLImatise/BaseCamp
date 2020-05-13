class: CommandLineTool
id: copy_snppipeline_data.py.cwl
inputs:
- id: which_data
  doc: 'Which of the supplied data sets to copy.  The choices are: lambdaVirusInputs          :
    Input reference and fastq files lambdaVirusExpectedResults : Expected results
    files agonaInputs                : Input reference file agonaExpectedResults       :
    Expected results files listeriaInputs             : Input reference file listeriaExpectedResults    :
    Expected results files configurationFile          : File of parameters to customize
    the SNP pipeline Note: the lambda virus data set is complete with input data and
    expected results.  The agona and listeria data sets have the reference genome
    and the expected results, but not the input fastq files, because the files are
    too large to include with the package.'
  type: string
  inputBinding:
    position: 0
- id: dest_directory
  doc: 'Destination directory into which the SNP pipeline data files will be copied.
    The data files are copied into the destination directory if the directory already
    exists.  Otherwise the destination directory is created and the data files are
    copied there.  (default: current directory)'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- copy_snppipeline_data.py
