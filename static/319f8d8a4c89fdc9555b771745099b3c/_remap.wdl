version 1.0

task Remap {
  input {
    Boolean? enzymes
    Boolean? site_len
    Boolean? min_cuts
    Boolean? max_cuts
    Boolean? single
    Boolean? plasmid
    Boolean? methylation
    Boolean? table
    Boolean? frame
    Boolean? flat_reformat
    Boolean? m_file
    Boolean? or_fm_in_size
    Boolean? uppercase
    Boolean? highlight
    Boolean? three_letter
    Boolean? number
    Boolean? width
    Boolean? length
    Boolean? margin
    Boolean? offset
    Boolean? html
    String considered_dot
    String the_mdot
  }
  command <<<
    _remap \
      ~{considered_dot} \
      ~{the_mdot} \
      ~{if (enzymes) then "-enzymes" else ""} \
      ~{if (site_len) then "-sitelen" else ""} \
      ~{if (min_cuts) then "-mincuts" else ""} \
      ~{if (max_cuts) then "-maxcuts" else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (plasmid) then "-plasmid" else ""} \
      ~{if (methylation) then "-methylation" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (frame) then "-frame" else ""} \
      ~{if (flat_reformat) then "-flatreformat" else ""} \
      ~{if (m_file) then "-mfile" else ""} \
      ~{if (or_fm_in_size) then "-orfminsize" else ""} \
      ~{if (uppercase) then "-uppercase" else ""} \
      ~{if (highlight) then "-highlight" else ""} \
      ~{if (three_letter) then "-threeletter" else ""} \
      ~{if (number) then "-number" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (margin) then "-margin" else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (html) then "-html" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    enzymes: "string     [all] The name 'all' reads in all enzyme\\nnames from the REBASE database. You can\\nspecify enzymes by giving their names with\\ncommas between then, such as:\\n'HincII,hinfI,ppiI,hindiii'.\\nThe case of the names is not important. You\\ncan specify a file of enzyme names to read\\nin by giving the name of the file holding\\nthe enzyme names with a '@' character in\\nfront of it, for example, '@enz.list'.\\nBlank lines and lines starting with a hash\\ncharacter or '!' are ignored and all other\\nlines are concatenated together with a comma\\ncharacter ',' and then treated as the list\\nof enzymes to search for.\\nAn example of a file of enzyme names is:\\n! my enzymes\\nHincII, ppiII\\n! other enzymes\\nhindiii\\nHinfI\\nPpiI (Any string)"
    site_len: "integer    [4] This sets the minimum length of the\\nrestriction enzyme recognition site. Any\\nenzymes with sites shorter than this will be\\nignored. (Integer from 2 to 20)"
    min_cuts: "integer    [1] This sets the minimum number of cuts for\\nany restriction enzyme that will be\\nconsidered. Any enzymes that cut fewer times\\nthan this will be ignored. (Integer from 1\\nto 1000)"
    max_cuts: "integer    [2000000000] This sets the maximum number of\\ncuts for any restriction enzyme that will\\nbe considered. Any enzymes that cut more\\ntimes than this will be ignored. (Any\\ninteger value)"
    single: "boolean    [N] If this is set then this forces the\\nvalues of the mincuts and maxcuts qualifiers\\nto both be 1. Any other value you may have\\nset them to will be ignored."
    plasmid: "boolean    [N] If this is set then this allows searches\\nfor restriction enzyme recognition site and\\ncut positions that span the end of the\\nsequence to be considered."
    methylation: "boolean    [N] If this is set then RE recognition sites\\nwill not match methylated bases."
    table: "menu       [0] Genetic code to use (Values: 0\\n(Standard); 1 (Standard (with alternative\\ninitiation codons)); 2 (Vertebrate\\nMitochondrial); 3 (Yeast Mitochondrial); 4\\n(Mold, Protozoan, Coelenterate Mitochondrial\\nand Mycoplasma/Spiroplasma); 5\\n(Invertebrate Mitochondrial); 6 (Ciliate\\nMacronuclear and Dasycladacean); 9\\n(Echinoderm Mitochondrial); 10 (Euplotid\\nNuclear); 11 (Bacterial); 12 (Alternative\\nYeast Nuclear); 13 (Ascidian Mitochondrial);\\n14 (Flatworm Mitochondrial); 15\\n(Blepharisma Macronuclear); 16\\n(Chlorophycean Mitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
    frame: "menu       [6] This allows you to specify the frames\\nthat are translated. If you are not\\ndisplaying cut sites on the reverse sense,\\nthen the reverse sense translations will not\\nbe displayed even if you have requested\\nframes 4, 5 or 6. By default, all six frames\\nwill be displayed. (Values: 1 (1); 2 (2); 3\\n(3); F (Forward three frames); -1 (-1); -2\\n(-2); -3 (-3); R (Reverse three frames); 6\\n(All six frames))"
    flat_reformat: "boolean    [N] This changes the output format to one\\nwhere the recognition site is indicated by a\\nrow of '===' characters and the cut site is\\npointed to by a '>' character in the\\nforward sense, or a '<' in the reverse sense\\nstrand."
    m_file: "datafile   [Emethylsites.dat] Restriction enzyme\\nmethylation data file"
    or_fm_in_size: "integer    [If this value is left as 0 then all of the\\ntranslation is shown.] This sets the minimum\\nsize of Open Reading Frames (ORFs) to\\ndisplay in the translations. All other\\ntranslation regions are masked by changing\\nthe amino acids to '-' characters. (Integer\\n0 or more)"
    uppercase: "range      [If this is left blank, then the sequence\\ncase is left alone.] Regions to put in\\nuppercase.\\nIf this is left blank, then the sequence\\ncase is left alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    highlight: "range      [(full sequence)] Regions to colour if\\nformatting for HTML.\\nIf this is left blank, then the sequence is\\nleft alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are followed by any valid HTML font\\ncolour.\\nExamples of region specifications are:\\n24-45 blue 56-78 orange\\n1-100 green 120-156 red\\nA file of ranges to colour (one range per\\nline) can be specified as '@filename'."
    three_letter: "boolean    [N] Display protein sequences in\\nthree-letter code"
    number: "boolean    [N] Number the sequences"
    width: "integer    [60] Width of sequence to display (Integer 1\\nor more)"
    length: "integer    [0] Line length of page (0 for indefinite)\\n(Integer 0 or more)"
    margin: "integer    [10] Margin around sequence for numbering\\n(Integer 0 or more)"
    offset: "integer    [1] Offset to start numbering the sequence\\nfrom (Any integer value)"
    html: "boolean    [N] Use HTML formatting"
    considered_dot: "-[no]ambiguity      boolean    [Y] This allows those enzymes which have one"
    the_mdot: "Advanced (Unprompted) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}