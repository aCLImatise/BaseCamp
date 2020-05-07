class: CommandLineTool
id: anvi_setup_pfams.cwl
inputs:
- id: pfam_data_dir
  doc: The directory for Pfam data to be stored. If you leave it as is without specifying
    anything, the default destination for the data directory will be used to set things
    up. The advantage of it is that everyone will be using a single data directory,
    but then you may need superuser privileges to do it. Using this parameter you
    can choose the location of the data directory somewhere you like. However, when
    it is time to run Pfam, you will need to remember that path and provide it to
    the program.
  type: string
  inputBinding:
    prefix: --pfam-data-dir
- id: reset
  doc: This program by default attempts to use previously downloaded files in your
    Pfam data directory if there are any. If something is wrong for some reason you
    can use this to tell anvi'o to remove everything, and start over.
  type: boolean
  inputBinding:
    prefix: --reset
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-setup-pfams
