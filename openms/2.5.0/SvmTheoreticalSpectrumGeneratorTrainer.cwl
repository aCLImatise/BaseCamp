#!/usr/bin/env cwl-runner

baseCommand:
- SvmTheoreticalSpectrumGeneratorTrainer
class: CommandLineTool
cwlVersion: v1.0
id: svmtheoreticalspectrumgeneratortrainer
inputs:
- doc: "*          Input Training Spectra in mzML (valid formats: 'mzML')"
  id: in_spectra
  inputBinding:
    prefix: -in_spectra
  type: File
- doc: "*  Input file with corresponding sequences in idXML (valid formats: 'idXML')"
  id: in_identifications
  inputBinding:
    prefix: -in_identifications
  type: File
- doc: '*   Name for output files. For each ion_type one file <filename>_residue_loss_charge.svm
    and one <filename>.info which has to be passed to the SvmTheoretical SpectrumGenerator'
  id: model_output_file
  inputBinding:
    prefix: -model_output_file
  type: File
- doc: "Precursor charge state used for model training (default: '2' min: '1' max:\
    \ '3')"
  id: precursor_charge
  inputBinding:
    prefix: -precursor_charge
  type: long
- doc: No models are trained but input training files for libSVM command line tools
    are produced
  id: write_training_files
  inputBinding:
    prefix: -write_training_files
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_SvmTheoreticalSpectrumGeneratorTrainer.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
