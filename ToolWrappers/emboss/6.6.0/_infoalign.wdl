version 1.0

task Infoalign {
  input {
    Boolean? matrix
    Boolean? refseq
    Boolean? html
    Boolean? plurality
    Boolean? identity
    Boolean? only
    Boolean? heading
    Boolean? usa
    Boolean? seq_length
    Boolean? align_length
    Boolean? gaps
    Boolean? gap_count
    Boolean? description
    String sequence
  }
  command <<<
    _infoalign \
      ~{sequence} \
      ~{if (matrix) then "-matrix" else ""} \
      ~{if (refseq) then "-refseq" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (plurality) then "-plurality" else ""} \
      ~{if (identity) then "-identity" else ""} \
      ~{if (only) then "-only" else ""} \
      ~{if (heading) then "-heading" else ""} \
      ~{if (usa) then "-usa" else ""} \
      ~{if (seq_length) then "-seqlength" else ""} \
      ~{if (align_length) then "-alignlength" else ""} \
      ~{if (gaps) then "-gaps" else ""} \
      ~{if (gap_count) then "-gapcount" else ""} \
      ~{if (description) then "-description" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    refseq: "string     [0] If you give the number in the alignment\\nor the name of a sequence, it will be taken\\nto be the reference sequence. The reference\\nsequence is the one against which all the\\nother sequences are compared. If this is set\\nto 0 then the consensus sequence will be\\nused as the reference sequence. By default\\nthe consensus sequence is used as the\\nreference sequence. (Any string)"
    html: "boolean    [N] Format output as an HTML table"
    plurality: "float      [50.0] Set a cut-off for the % of positive\\nscoring matches below which there is no\\nconsensus. The default plurality is taken as\\n50% of the total weight of all the\\nsequences in the alignment. (Number from\\n0.000 to 100.000)"
    identity: "float      [0.0] Provides the facility of setting the\\nrequired number of identities at a position\\nfor it to give a consensus. Therefore, if\\nthis is set to 100% only columns of\\nidentities contribute to the consensus.\\n(Number from 0.000 to 100.000)"
    only: "boolean    [N] This is a way of shortening the command\\nline if you only want a few things to be\\ndisplayed. Instead of specifying:\\n'-nohead -nousa -noname -noalign -nogaps\\n-nogapcount -nosimcount -noidcount\\n-nodiffcount -noweight'\\nto get only the sequence length output, you\\ncan specify\\n'-only -seqlength'"
    heading: "boolean    [@(!$(only))] Display column headings"
    usa: "boolean    [@(!$(only))] Display the USA of the"
    seq_length: "boolean    [@(!$(only))] Display 'seqlength' column"
    align_length: "boolean    [@(!$(only))] Display 'alignlength' column"
    gaps: "boolean    [@(!$(only))] Display number of gaps"
    gap_count: "boolean    [@(!$(only))] Display number of gap"
    description: "boolean    [@(!$(only))] Display 'description' column"
    sequence: "-name               boolean    [@(!$(only))] Display 'name' column"
  }
  output {
    File out_stdout = stdout()
  }
}