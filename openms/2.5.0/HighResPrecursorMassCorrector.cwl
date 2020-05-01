#!/usr/bin/env cwl-runner

baseCommand:
- HighResPrecursorMassCorrector
class: CommandLineTool
cwlVersion: v1.0
id: highresprecursormasscorrector
inputs:
- doc: "*                                         Input file (centroided data) (valid\
    \ formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                        Output file (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: ":in <file>                                  Features used to correct precursor\
    \ masses. (valid formats: 'featureXML')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: ":mz_tolerance <num>                         The precursor mass tolerance.\
    \ Used to determine matching to feature mass traces. (default: '5.0')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: ":mz_tolerance_unit <choice>                 Unit of precursor mass tolerance\
    \ (default: 'ppm' valid: 'Da', 'ppm')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: ":rt_tolerance <num>                         Additional retention time tolerance\
    \ added to feature boundaries. (default: '0.0')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :believe_charge                             Assume precursor charge to be correct.
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :keep_original                              Make a copy of the precursor and
    MS2 (true) or discard the original (false).
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :assign_all_matching                        Correct a precursor using all matching
    features (true) or only the nearest (false). Only evaluated if copies are created
    (feature:keep_original).
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: ":mz_tolerance <num>                    The precursor mass tolerance to find\
    \ the closest MS1 peak. (Disable method by setting value to 0.0) (default: '0.0')"
  id: nearest_peak
  inputBinding:
    prefix: -nearest_peak
  type: boolean
- doc: ":mz_tolerance_unit <choice>            Unit of precursor mass tolerance (default:\
    \ 'ppm' valid: 'Da', 'ppm')"
  id: nearest_peak
  inputBinding:
    prefix: -nearest_peak
  type: boolean
- doc: ":mz_tolerance <num>          The precursor mass tolerance to find the highest\
    \ intensity MS1 peak. Suggested value 1/max. expected charge. (Disable method\
    \ by setting value to 0.0) (defau lt: '0.0')"
  id: highest_intensity_peak
  inputBinding:
    prefix: -highest_intensity_peak
  type: boolean
- doc: ":mz_tolerance_unit <choice>  Unit of precursor mass tolerance (default: 'ppm'\
    \ valid: 'Da', 'ppm')"
  id: highest_intensity_peak
  inputBinding:
    prefix: -highest_intensity_peak
  type: boolean
- doc: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak'\
    \ algorithm (see corresponding subsection) containing columns: RT, uncorrec tedMZ,\
    \ correctedMZ, deltaMZ. (valid formats: 'csv')"
  id: out_csv
  inputBinding:
    prefix: -out_csv
  type: File
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
