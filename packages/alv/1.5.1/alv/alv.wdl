version 1.0

task Alv {
  input {
    String? format
    String? type
    Boolean? glimpse
    String? color_scheme
    String? color_mode
    String? code
    Boolean? dotted
    Boolean? list_codes
    String? width
    Boolean? keep_colors_when_redirecting
    Boolean? pipe_to_less
    Boolean? info
    Boolean? cite
    Boolean? method
    String? random_accessions
    String? sorting
    String? sort_by_id
    String? sorting_order
    String? select_matching
    Boolean? majority
    Boolean? no_indels
    Int? int__accsubstring
    String? acc_abbreviate
    String in_file
    String end_dot
  }
  command <<<
    alv \
      ~{in_file} \
      ~{end_dot} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (glimpse) then "--glimpse" else ""} \
      ~{if defined(color_scheme) then ("--color-scheme " +  '"' + color_scheme + '"') else ""} \
      ~{if defined(color_mode) then ("--color-mode " +  '"' + color_mode + '"') else ""} \
      ~{if defined(code) then ("--code " +  '"' + code + '"') else ""} \
      ~{if (dotted) then "--dotted" else ""} \
      ~{if (list_codes) then "--list-codes" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (keep_colors_when_redirecting) then "--keep-colors-when-redirecting" else ""} \
      ~{if (pipe_to_less) then "--pipe-to-less" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (cite) then "--cite" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if defined(random_accessions) then ("--random-accessions " +  '"' + random_accessions + '"') else ""} \
      ~{if defined(sorting) then ("--sorting " +  '"' + sorting + '"') else ""} \
      ~{if defined(sort_by_id) then ("--sort-by-id " +  '"' + sort_by_id + '"') else ""} \
      ~{if defined(sorting_order) then ("--sorting-order " +  '"' + sorting_order + '"') else ""} \
      ~{if defined(select_matching) then ("--select-matching " +  '"' + select_matching + '"') else ""} \
      ~{if (majority) then "--majority" else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if defined(int__accsubstring) then ("-as " +  '"' + int__accsubstring + '"') else ""} \
      ~{if defined(acc_abbreviate) then ("--acc-abbreviate " +  '"' + acc_abbreviate + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alv:1.5.1--py_0"
  }
  parameter_meta {
    format: "Specify what sequence type to assume. Be specific if\\nthe file is not recognized automatically. When reading\\nfrom stdin, the format is always guessed to be FASTA.\\nDefault: guess"
    type: "Specify what sequence type to assume. Coding DNA/RNA\\nis assumed with the 'codon' option. Guessing the\\nformat only chooses between 'aa' and 'dna', but\\nassumes the standard genetic code. Default: guess"
    glimpse: "Give a glimpse of an alignment. If the alignment fits\\nwithout any scrolling and without line breaks, then\\njust view the alignment. Otherwise, identify a\\nconserved part of the MSA and show a random sample of\\nthe sequences that fits the screen."
    color_scheme: "Color scheme for AA and coding DNA/RNA. The clustal\\ncoloring scheme is an approximation of the original,\\ndue to the limited color choices for consoles. The\\n\\\"hydrophobicity\\\" gives red to hydrophobic, blue to\\npolar, and green to charged residues. Default: clustal"
    color_mode: "With a dark terminal, you probably want to set the\\ncolor mode to \\\"dark\\\"."
    code: "Genetic code to use, based on NCBI's code list, see\\ndetails below. Show alternatives with the --list-codes\\noption. Default: 1."
    dotted: "Let the first sequence in output alignment be a\\ntemplate and, for other sequences, show identity to\\ntemplate using a period. Useful for alignments with\\nhigh similarity."
    list_codes: "List the available genetic codes and exit."
    width: "Width of alignment blocks. Defaults to terminal width\\nminus accession width, essentially."
    keep_colors_when_redirecting: "Do not strip colors when redirecting to stdout, or\\nsimilar. In particular useful with the command 'less\\n-R'."
    pipe_to_less: "Do not break the alignment into blocks. Implies -k.\\nSuitable when piping to commands like 'less -RS'."
    info: "Append basic information about the alignment at the"
    cite: "Write citation example: plain text and a BibTeX item."
    method: "Write a suggested text to add to a methods section."
    random_accessions: "Only view a random sample of the alignment sequences."
    sorting: "Sort the sequences as given in the infile or\\nalphabetically (by accession). Default: infile"
    sort_by_id: "Sort the output alignment by similarity (percent\\nidentity) to named sequence. Overrides -s."
    sorting_order: "Comma-separated list of accessions. Sequences will be\\npresented in this order. Also note that one can choose\\nwhich sequences to present with this opion. Overrides\\n-s and -si."
    select_matching: "Only show sequences with accessions containing\\nACCESSION_PATTERN."
    majority: "Only color those column where the most common amino\\nacid is found in 50 percent of sequences."
    no_indels: "Only color column without indels."
    int__accsubstring: "INT, --acc-substring INT INT\\nSpecify what substring of an accession to keep. '-as\\n10 15' discards all but position 10 to 14 in any\\naccession."
    acc_abbreviate: "Keep only the first N and last N characters of the\\naccession\\n"
    in_file: "The infile is the path to a file, or '-' if reading\\nfrom stdin."
    end_dot: "-j, --just-info       Write basic information about the alignment and exit."
  }
  output {
    File out_stdout = stdout()
  }
}