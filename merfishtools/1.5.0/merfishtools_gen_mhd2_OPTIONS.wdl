version 1.0

task MerfishtoolsGenMhd2OPTIONS {
  input {
    Int bitsBits
    Int oneOneBits
  }
  command <<<
    merfishtools gen-mhd2 OPTIONS \
      ~{if defined(bitsBits) then ("--bits " +  '"' + bitsBits + '"') else ""} \
      ~{if defined(oneOneBits) then ("--onebits " +  '"' + oneOneBits + '"') else ""}
  >>>
}