version 1.0

task RsatRandomseq {
  input {
    Boolean? sequence_length
    Boolean? number_sequencesgenerate_set
    Boolean? verbose
    File? specified_standard_output
    String? prefix
    String? format
    Boolean? lw
    Boolean? seed
    File? generate_random_sequences
    Int? template_format
    Int? lf
    Boolean? exp_freq
    Boolean? bg
    Boolean? org
    String? markov
    Boolean? ol
    Boolean? rep
    String random_seq
    String sequences
    String probabilities
  }
  command <<<
    rsat random_seq \
      ~{random_seq} \
      ~{sequences} \
      ~{probabilities} \
      ~{if (sequence_length) then "-l" else ""} \
      ~{if (number_sequencesgenerate_set) then "-n" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (lw) then "-lw" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(generate_random_sequences) then ("-i " +  '"' + generate_random_sequences + '"') else ""} \
      ~{if defined(template_format) then ("-template_format " +  '"' + template_format + '"') else ""} \
      ~{if defined(lf) then ("-lf " +  '"' + lf + '"') else ""} \
      ~{if (exp_freq) then "-expfreq" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if defined(markov) then ("-markov " +  '"' + markov + '"') else ""} \
      ~{if (ol) then "-ol" else ""} \
      ~{if (rep) then "-rep" else ""}
  >>>
  parameter_meta {
    sequence_length: "sequence length"
    number_sequencesgenerate_set: "Number of sequences.\\nGenerate a set of n sequences, each of length l."
    verbose: "verbose."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the comand within a pipe."
    prefix: "for sequence identifiers (default: rand)."
    format: "format.\\nTwo options are available:\\nIG      IG suite from IntelliGenetics\\nraw     (default)"
    lw: "##  Line width. A newline character will be inserted in the\\nsequence every ## bases. Default is 70.\\n-lw 0 will prevent newline insertion."
    seed: "# seed for the random generator"
    generate_random_sequences: "Generate random sequences with lengths specified in a template\\nfile.\\nVarious template types are supported (option -template_format):\\nsequences (in fasta), genomic coordinates (in bed), sequence\\nlengths.\\nThis option is incompatible with options -l and -n."
    template_format: "Format for the template set (specified with the option -i).\\nSupported formats:\\nfasta (default)\\nTemplates are provided as a fasta-formatted sequence file. The\\nprogram random-genome-fragments calls sequence-lengths to define\\nthe template lengths.\\nbed\\nTemplates are provided as a bed-formatted file of genomic\\ncoordinates. The program random-genome-fragments calls\\nsequence-lengths -format bed to define the lengths of the bed\\nfeatures.\\nBed file must contain at least 3 columns, indicating, for each\\nfeature:\\n1. id (ignored)\\n2. start coordinate\\n3. end coordinate\\nlen\\nTemplates are provided as a tab-delimited file indicating the\\nlength of each template sequence (this file can be produced by\\nsequence-lengths)."
    lf: "file\\nDeprecated. Replaced by -i template_file -template_format len.\\nMaintained for backward compatibility.\\nGenerate random sequences with the same lengths as a set of template\\nsequences. The sequence length file can be obtained with the command\\nsequence-lengths.\\nThis option is incompatible with options -l and -n.\\nThe length file contains two columns :\\n-sequence ID (ignored)\\n-sequence length"
    exp_freq: "Specifyt a file describing the background model. This\\nfile must be in oligo format, i.e. a table with\\nexpected oligomer frequencies. See\\nI<convert-background-model> for conversion of other\\nbackground model formats into oligomer frequency\\ntables.\\nWhen this option is used, the sequences are generated\\naccording to a Markov chain. For instance if the\\nfrequency file contains tetramers, each base will be\\nselected randomly with a probability depending on the\\n3 preceding bases:\\np(Wj-3,j)\\np(Bj=B) = -----------\\np(Wj-3,j-1)\\nwhere   Bj      is the base at position j\\nB       is a residue, ie A, C, G or T\\nWj-3,j-1\\nis a word found in the sequence between\\npositions j-3 and j-1\\nWj-3,j  is the same word with the character B\\nconcatenated at its end"
    bg: "background model\\nAutomatically load a pre-calibrated exected frequency\\nfile from the RSAT genome distribution. When this\\noption is used, the options -org and -ol are also\\nrequired, to indicate the organism and the\\noligonucleotide length, respectively.\\nWhen the option -bg is used, it is necessary to\\ndefine the order of the markov chain, either with the\\noption -markov, or with the option -ol (oligo length).\\nThis option is incompatible with the option -expfreq.\\nType of sequences used as background model for\\nestimating expected oligonucleotide frequencies.\\nSupported models:\\n-bg equi\\nequiprobable residue frequencies (default)\\n-bg upstream-noorf\\nall upstream sequences, preventing overlap with\\nupstream open reading frames (ORFs). Requires to\\nspeciy a model organism.\\n-bg upstream\\nall upstream sequences, allowing overlap with\\nupstream ORFs. Requires to speciy a model\\norganism.\\n-bg intergenic\\nintergenic frequencies Whole set of intergenic\\nregions, including upstream and downstream\\nsequences. Requires to speciy a model organism.\\n-bg protein\\ngenerate random peptidic sequences using a Markov\\nchain calibrated on all peptidic sequences of the\\nselected organism."
    org: "organism\\nThis is necessary with the option -bg, to determine\\nwhich frequency file has to be sued for expected\\nfrequency calibration."
    markov: "order for the background model\\nNote: options -markov and -ol are mutually exclusive."
    ol: "oligo-length\\nOligonucleotide length used to train the Markov\\nbackground model. If the oligo length is k, the markov\\norder is m = k-1."
    rep: "Number of repetitions\\nThe list if sequence lengths is repeated rep times.\\nThis option only serves when a length file is used to\\nspecify sequence-sise lengths.\\nThis option is incompatible with the options -l and\\n-n."
    random_seq: "USAGE"
    sequences: "OPTIONS"
    probabilities: "-a      alphabet\\nmust be followed by residue frequencies expressed precisely\\nthis way:\\n-a a:t # c:g #\\nex:\\n-a a:t 0.3 c:g 0.2\\nThe option\\n-a yeast\\nwill automatically use the residue frequencies from yeast\\ngenome."
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}