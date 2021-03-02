class: CommandLineTool
id: jalview.cwl
inputs:
- id: in_no_display
  doc: Run Jalview without User Interface.
  type: boolean?
  inputBinding:
    prefix: -nodisplay
- id: in_props
  doc: Use the given Jalview properties file instead of users default.
  type: File?
  inputBinding:
    prefix: -props
- id: in_colour
  doc: The colourscheme to be applied to the alignment
  type: string?
  inputBinding:
    prefix: -colour
- id: in_annotations
  doc: Add precalculated annotations to the alignment.
  type: File?
  inputBinding:
    prefix: -annotations
- id: in_tree
  doc: Load the given newick format tree file onto the alignment
  type: File?
  inputBinding:
    prefix: -tree
- id: in_features
  doc: Use the given file to mark features on the alignment.
  type: File?
  inputBinding:
    prefix: -features
- id: in_fast_a
  doc: Create alignment file FILE in Fasta format.
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_clustal
  doc: Create alignment file FILE in Clustal format.
  type: File?
  inputBinding:
    prefix: -clustal
- id: in_pfam
  doc: Create alignment file FILE in PFAM format.
  type: File?
  inputBinding:
    prefix: -pfam
- id: in_msf
  doc: Create alignment file FILE in MSF format.
  type: File?
  inputBinding:
    prefix: -msf
- id: in_pile_up
  doc: Create alignment file FILE in Pileup format
  type: File?
  inputBinding:
    prefix: -pileup
- id: in_pir
  doc: Create alignment file FILE in PIR format.
  type: File?
  inputBinding:
    prefix: -pir
- id: in_blc
  doc: Create alignment file FILE in BLC format.
  type: File?
  inputBinding:
    prefix: -blc
- id: in_json
  doc: Create alignment file FILE in JSON format.
  type: File?
  inputBinding:
    prefix: -json
- id: in_jalview
  doc: Create alignment file FILE in Jalview format.
  type: File?
  inputBinding:
    prefix: -jalview
- id: in_png
  doc: Create PNG image FILE from alignment.
  type: File?
  inputBinding:
    prefix: -png
- id: in_svg
  doc: Create SVG image FILE from alignment.
  type: File?
  inputBinding:
    prefix: -svg
- id: in_html
  doc: Create HTML file from alignment.
  type: File?
  inputBinding:
    prefix: -html
- id: in_bio_j_sms_a
  doc: Create BioJS MSA Viewer HTML file from alignment.
  type: File?
  inputBinding:
    prefix: -biojsMSA
- id: in_img_map
  doc: Create HTML file FILE with image map of PNG image.
  type: File?
  inputBinding:
    prefix: -imgMap
- id: in_eps
  doc: Create EPS file FILE from alignment.
  type: File?
  inputBinding:
    prefix: -eps
- id: in_questionnaire
  doc: Queries the given URL for information about any Jalview user questionnaires.
  type: string?
  inputBinding:
    prefix: -questionnaire
- id: in_no_questionnaire
  doc: Turn off questionnaire check.
  type: boolean?
  inputBinding:
    prefix: -noquestionnaire
- id: in_no_news
  doc: off check for Jalview news.
  type: string?
  inputBinding:
    prefix: -nonews
- id: in_no_usage_stats
  doc: Turn off google analytics tracking for this session.
  type: boolean?
  inputBinding:
    prefix: -nousagestats
- id: in_no_sort_by_tree
  doc: Enable or disable sorting of the given alignment by the given tree
  type: string?
  inputBinding:
    prefix: -nosortbytree
- id: in_jab_aws
  doc: Specify URL for Jabaws services (e.g. for a local installation).
  type: string?
  inputBinding:
    prefix: -jabaws
- id: in_fetch_from
  doc: Query nickname for features for the alignments and display them.
  type: string?
  inputBinding:
    prefix: -fetchfrom
- id: in_groovy
  doc: Execute groovy script in FILE, after all other arguments have been processed
    (if FILE is the text 'STDIN' then the file will be read from STDIN)
  type: File?
  inputBinding:
    prefix: -groovy
- id: in_open
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -open
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
- id: in_output_format
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jalview
