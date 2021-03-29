class: CommandLineTool
id: alv.cwl
inputs:
- id: in_format
  doc: "Specify what sequence type to assume. Be specific if\nthe file is not recognized\
    \ automatically. When reading\nfrom stdin, the format is always guessed to be\
    \ FASTA.\nDefault: guess"
  type: string?
  inputBinding:
    prefix: --format
- id: in_type
  doc: "Specify what sequence type to assume. Coding DNA/RNA\nis assumed with the\
    \ 'codon' option. Guessing the\nformat only chooses between 'aa' and 'dna', but\n\
    assumes the standard genetic code. Default: guess"
  type: string?
  inputBinding:
    prefix: --type
- id: in_glimpse
  doc: "Give a glimpse of an alignment. If the alignment fits\nwithout any scrolling\
    \ and without line breaks, then\njust view the alignment. Otherwise, identify\
    \ a\nconserved part of the MSA and show a random sample of\nthe sequences that\
    \ fits the screen."
  type: boolean?
  inputBinding:
    prefix: --glimpse
- id: in_color_scheme
  doc: "Color scheme for AA and coding DNA/RNA. The clustal\ncoloring scheme is an\
    \ approximation of the original,\ndue to the limited color choices for consoles.\
    \ The\n\"hydrophobicity\" gives red to hydrophobic, blue to\npolar, and green\
    \ to charged residues. Default: clustal"
  type: string?
  inputBinding:
    prefix: --color-scheme
- id: in_color_mode
  doc: "With a dark terminal, you probably want to set the\ncolor mode to \"dark\"\
    ."
  type: string?
  inputBinding:
    prefix: --color-mode
- id: in_code
  doc: "Genetic code to use, based on NCBI's code list, see\ndetails below. Show alternatives\
    \ with the --list-codes\noption. Default: 1."
  type: string?
  inputBinding:
    prefix: --code
- id: in_dotted
  doc: "Let the first sequence in output alignment be a\ntemplate and, for other sequences,\
    \ show identity to\ntemplate using a period. Useful for alignments with\nhigh\
    \ similarity."
  type: boolean?
  inputBinding:
    prefix: --dotted
- id: in_list_codes
  doc: List the available genetic codes and exit.
  type: boolean?
  inputBinding:
    prefix: --list-codes
- id: in_width
  doc: "Width of alignment blocks. Defaults to terminal width\nminus accession width,\
    \ essentially."
  type: string?
  inputBinding:
    prefix: --width
- id: in_keep_colors_when_redirecting
  doc: "Do not strip colors when redirecting to stdout, or\nsimilar. In particular\
    \ useful with the command 'less\n-R'."
  type: boolean?
  inputBinding:
    prefix: --keep-colors-when-redirecting
- id: in_pipe_to_less
  doc: "Do not break the alignment into blocks. Implies -k.\nSuitable when piping\
    \ to commands like 'less -RS'."
  type: boolean?
  inputBinding:
    prefix: --pipe-to-less
- id: in_info
  doc: Append basic information about the alignment at the
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_cite
  doc: 'Write citation example: plain text and a BibTeX item.'
  type: boolean?
  inputBinding:
    prefix: --cite
- id: in_method
  doc: Write a suggested text to add to a methods section.
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_random_accessions
  doc: Only view a random sample of the alignment sequences.
  type: string?
  inputBinding:
    prefix: --random-accessions
- id: in_sorting
  doc: "Sort the sequences as given in the infile or\nalphabetically (by accession).\
    \ Default: infile"
  type: string?
  inputBinding:
    prefix: --sorting
- id: in_sort_by_id
  doc: "Sort the output alignment by similarity (percent\nidentity) to named sequence.\
    \ Overrides -s."
  type: string?
  inputBinding:
    prefix: --sort-by-id
- id: in_sorting_order
  doc: "Comma-separated list of accessions. Sequences will be\npresented in this order.\
    \ Also note that one can choose\nwhich sequences to present with this opion. Overrides\n\
    -s and -si."
  type: string?
  inputBinding:
    prefix: --sorting-order
- id: in_select_matching
  doc: "Only show sequences with accessions containing\nACCESSION_PATTERN."
  type: string?
  inputBinding:
    prefix: --select-matching
- id: in_majority
  doc: "Only color those column where the most common amino\nacid is found in 50 percent\
    \ of sequences."
  type: boolean?
  inputBinding:
    prefix: --majority
- id: in_no_indels
  doc: Only color column without indels.
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_as
  doc: "INT, --acc-substring INT INT\nSpecify what substring of an accession to keep.\
    \ '-as\n10 15' discards all but position 10 to 14 in any\naccession."
  type: long?
  inputBinding:
    prefix: -as
- id: in_acc_abbreviate
  doc: "Keep only the first N and last N characters of the\naccession\n"
  type: string?
  inputBinding:
    prefix: --acc-abbreviate
- id: in_in_file
  doc: "The infile is the path to a file, or '-' if reading\nfrom stdin."
  type: string
  inputBinding:
    position: 0
- id: in_end_dot
  doc: -j, --just-info       Write basic information about the alignment and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alv:1.5.1--py_0
cwlVersion: v1.1
baseCommand:
- alv
