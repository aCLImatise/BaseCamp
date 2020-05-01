#!/usr/bin/env cwl-runner

baseCommand:
- anvi-setup-pfams
class: CommandLineTool
cwlVersion: v1.0
id: anvi-setup-pfams
inputs:
- doc: The directory for Pfam data to be stored. If you leave it as is without specifying
    anything, the default destination for the data directory will be used to set things
    up. The advantage of it is that everyone will be using a single data directory,
    but then you may need superuser privileges to do it. Using this parameter you
    can choose the location of the data directory somewhere you like. However, when
    it is time to run Pfam, you will need to remember that path and provide it to
    the program.
  id: pfam_data_dir
  inputBinding:
    prefix: --pfam-data-dir
  type: string
- doc: This program by default attempts to use previously downloaded files in your
    Pfam data directory if there are any. If something is wrong for some reason you
    can use this to tell anvi'o to remove everything, and start over.
  id: reset
  inputBinding:
    prefix: --reset
  type: boolean
