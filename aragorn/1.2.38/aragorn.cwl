class: CommandLineTool
id: aragorn.cwl
inputs:
- id: fast_a
  doc: <filename>
  type: string
  inputBinding:
    prefix: -fasta
- id: c
  doc: Assume that each sequence has a circular topology. Search wraps around each
    end. Default setting.
  type: boolean
  inputBinding:
    prefix: -c
- id: l
  doc: Assume that each sequence has a linear topology. Search does not wrap.
  type: boolean
  inputBinding:
    prefix: -l
- id: d
  doc: Double. Search both strands of each sequence. Default setting.
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: or -s+    Single. Do not search the complementary (antisense) strand of each
    sequence.
  type: boolean
  inputBinding:
    prefix: -s
- id: sc
  doc: Single complementary. Do not search the sense strand of each sequence.
  type: string
  inputBinding:
    prefix: -sc
- id: i
  doc: Search for tRNA genes with introns in anticodon loop with maximum length 3000
    bases. Minimum intron length is 0 bases. Ignored if -m is specified.
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: <max>       Search for tRNA genes with introns in anticodon loop with maximum
    length <max> bases. Minimum intron length is 0 bases. Ignored if -m is specified.
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: <min>,<max> Search for tRNA genes with introns in anticodon loop with maximum
    length <max> bases, and minimum length <min> bases. Ignored if -m is specified.
  type: boolean
  inputBinding:
    prefix: -i
- id: io
  doc: Same as -i, but allow tRNA genes with long introns to overlap shorter tRNA
    genes.
  type: boolean
  inputBinding:
    prefix: -io
- id: if
  doc: Same as -i, but fix intron between positions 37 and 38 on C-loop (one base
    after anticodon).
  type: boolean
  inputBinding:
    prefix: -if
- id: if_o
  doc: Same as -if and -io combined.
  type: boolean
  inputBinding:
    prefix: -ifo
- id: ir
  doc: Same as -i, but report tRNA genes with minimum length <min> bases rather than
    search for tRNA genes with minimum length <min> bases. With this switch, <min>
    acts as an output filter, minimum intron length for searching is still 0 bases.
  type: boolean
  inputBinding:
    prefix: -ir
- id: tv
  doc: Do not search for mitochondrial TV replacement loop tRNA genes. Only relevant
    if -mt used.
  type: boolean
  inputBinding:
    prefix: -tv
- id: c7
  doc: Search for tRNA genes with 7 base C-loops only.
  type: boolean
  inputBinding:
    prefix: -c7
- id: ss
  doc: Use the stricter canonical 1-2 bp spacer1 and 1 bp spacer2. Ignored if -mt
    set. Default is to allow 3 bp spacer1 and 0-2 bp spacer2, which may degrade selectivity.
  type: boolean
  inputBinding:
    prefix: -ss
- id: j
  doc: Display 4-base sequence on 3' end of astem regardless of predicted amino-acyl
    acceptor length.
  type: boolean
  inputBinding:
    prefix: -j
- id: jr
  doc: Allow some divergence of 3' amino-acyl acceptor sequence from NCCA.
  type: boolean
  inputBinding:
    prefix: -jr
- id: jr4
  doc: Allow some divergence of 3' amino-acyl acceptor sequence from NCCA, and display
    4 bases.
  type: boolean
  inputBinding:
    prefix: -jr4
- id: e
  doc: Print out score for each reported gene.
  type: boolean
  inputBinding:
    prefix: -e
- id: ps
  doc: Lower scoring thresholds to 95% of default levels.
  type: boolean
  inputBinding:
    prefix: -ps
- id: ps
  doc: <num>      Change scoring thresholds to <num> percent of default levels.
  type: boolean
  inputBinding:
    prefix: -ps
- id: rp
  doc: Flag possible pseudogenes (score < 100 or tRNA anticodon loop <> 7 bases long).
    Note that genes with score < 100 will not be detected or flagged if scoring thresholds
    are not also changed to below 100% (see -ps switch).
  type: boolean
  inputBinding:
    prefix: -rp
- id: rp
  doc: <num>      Flag possible pseudogenes and change score threshold to <num> percent
    of default levels.
  type: boolean
  inputBinding:
    prefix: -rp
- id: seq
  doc: Print out primary sequence.
  type: boolean
  inputBinding:
    prefix: -seq
- id: br
  doc: Show secondary structure of tRNA gene primary sequence using round brackets.
  type: boolean
  inputBinding:
    prefix: -br
- id: fast_a
  doc: Print out primary sequence in fasta format.
  type: boolean
  inputBinding:
    prefix: -fasta
- id: fo
  doc: Print out primary sequence in fasta format only (no secondary structure).
  type: boolean
  inputBinding:
    prefix: -fo
- id: f_on
  doc: Same as -fo, with sequence and gene numbering in header.
  type: boolean
  inputBinding:
    prefix: -fon
- id: fos
  doc: Same as -fo, with no spaces in header.
  type: boolean
  inputBinding:
    prefix: -fos
- id: fons
  doc: Same as -fo, with sequence and gene numbering, but no spaces. as (<species>|<species>)
    instead of ???
  type: boolean
  inputBinding:
    prefix: -fons
- id: v
  doc: Verbose. Prints out information during search to STDERR.
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: Print out tRNA domain for tmRNA genes.
  type: boolean
  inputBinding:
    prefix: -a
- id: a7
  doc: Restrict tRNA astem length to a maximum of 7 bases
  type: boolean
  inputBinding:
    prefix: -a7
- id: aa
  doc: Display message if predicted iso-acceptor species does not match species in
    sequence name (if present).
  type: boolean
  inputBinding:
    prefix: -aa
- id: amt
  doc: <num>     Change annotated tRNA length mismatch reporting threshold to <num>
    bases when searching GENBANK files. Default is 10 bases.
  type: boolean
  inputBinding:
    prefix: -amt
- id: a_mm
  doc: <num>     Change annotated tmRNA length mismatch reporting threshold to <num>
    bases when searching GENBANK files. Default is 30 bases.
  type: boolean
  inputBinding:
    prefix: -amm
- id: q
  doc: Dont print configuration line (which switches and files were used).
  type: boolean
  inputBinding:
    prefix: -q
- id: rn
  doc: Repeat sequence name before summary information.
  type: boolean
  inputBinding:
    prefix: -rn
- id: o
  doc: Print output to <outfile>. If <outfile> already exists, it is overwritten.
    By default all output goes to stdout.
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: Print out in batch mode.
  type: boolean
  inputBinding:
    prefix: -w
- id: wa
  doc: 'Same as -w, but for 6 or 8 base anticodon loops, print possible iso-acceptor
    species For tRNA genes, batch mode output is in the form: Sequence name N genes
    found 1 tRNA-<species> [locus 1] <Apos> (nnn) i(<intron position>,<intron length>)
    .           .           N tRNA-<species> [Locus N] <Apos> (nnn) i(<intron position>,<intron
    length>) N is the number of genes found <species> is the tRNA iso-acceptor species
    <Apos> is the tRNA anticodon relative position (nnn) is the tRNA anticodon base
    triplet i means the tRNA gene has a C-loop intron For tmRNA genes, output is in
    the form: n tmRNA(p) [Locus n] <tag offset>,<tag end offset> <tag peptide> p means
    the tmRNA gene is permuted'
  type: boolean
  inputBinding:
    prefix: -wa
- id: w_unix
  doc: Get around problem with some windows gcc compilers (found so far in Strawberry
    Perl and Active Perl) when reading Unix files. Execution speed may be slower for
    large files. Execution speed will be a lot slower for files with many small sequences.
  type: boolean
  inputBinding:
    prefix: -wunix
outputs: []
cwlVersion: v1.1
baseCommand:
- aragorn
