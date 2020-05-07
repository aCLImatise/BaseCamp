version 1.0

task MerfishtoolsGenMhd2 {
  input {
    Int bitsBits
    Int oneOneBits
    String notNotExpressed
  }
  command <<<
    merfishtools gen-mhd2 \
      ~{if defined(bitsBits) then ("--bits " +  '"' + bitsBits + '"') else ""} \
      ~{if defined(oneOneBits) then ("--onebits " +  '"' + oneOneBits + '"') else ""} \
      ~{if defined(notNotExpressed) then ("--not-expressed " +  '"' + notNotExpressed + '"') else ""}
  >>>
}