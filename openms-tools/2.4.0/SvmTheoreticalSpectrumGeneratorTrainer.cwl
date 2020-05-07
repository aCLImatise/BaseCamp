class: CommandLineTool
id: SvmTheoreticalSpectrumGeneratorTrainer.cwl
inputs:
- id: in_spectra
  doc: "*          Input Training Spectra in mzML (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in_spectra
- id: in_identifications
  doc: "*  Input file with corresponding sequences in idXML (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_identifications
- id: model_output_file
  doc: '*   Name for output files. For each ion_type one file <filename>_residue_loss_charge.svm
    and one <filename>.info which has to be passed to the SvmTheoretical SpectrumGenerator'
  type: File
  inputBinding:
    prefix: -model_output_file
- id: precursor_charge
  doc: "Precursor charge state used for model training (default: '2' min: '1' max:\
    \ '3')"
  type: long
  inputBinding:
    prefix: -precursor_charge
- id: write_training_files
  doc: No models are trained but input training files for libSVM command line tools
    are produced
  type: boolean
  inputBinding:
    prefix: -write_training_files
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- SvmTheoreticalSpectrumGeneratorTrainer
