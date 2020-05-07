class: CommandLineTool
id: singularity_apps.cwl
inputs:
- id: singularity_appname
  doc: the name of the application
  type: string
  inputBinding:
    position: 0
- id: singularity_app_root
  doc: the application base (/scif/apps/<app>)
  type: string
  inputBinding:
    position: 1
- id: singularity_app_meta
  doc: the application metadata folder
  type: string
  inputBinding:
    position: 2
- id: singularity_appdata
  doc: the data base folder for active app
  type: string
  inputBinding:
    position: 3
- id: singularity_app_input
  doc: expected input folder within data base folder
  type: string
  inputBinding:
    position: 4
- id: singularity_app_output
  doc: the output data folder within data base folder
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- apps
