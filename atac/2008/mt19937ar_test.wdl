version 1.0

task Mt19937artest {
  input {
    Int five_five_five_nine_nine_one_three_three_two
    Int eight_two_three_seven_eight_one_three_six
    Int eight_four_nine_three_six_two_one_one_nine
    Int eight_one_five_nine_four_three_zero_four_five
    Int one_three_four_three_six_six_two_five_four
    Int four_two_seven_eight_o_netwosix_five_two
    Int eight_two_nine_four_six_six_eight_three_three
    Int four_three_seven_eight_seven_four_zero_fourfour
    Int five_nine_nine_one_four_nine_three_one_two
    Int one_two_three_five_nine_nine_eight_eight_eight
  }
  command <<<
    mt19937ar_test \
      ~{five_five_five_nine_nine_one_three_three_two} \
      ~{eight_two_three_seven_eight_one_three_six} \
      ~{eight_four_nine_three_six_two_one_one_nine} \
      ~{eight_one_five_nine_four_three_zero_four_five} \
      ~{one_three_four_three_six_six_two_five_four} \
      ~{four_two_seven_eight_o_netwosix_five_two} \
      ~{eight_two_nine_four_six_six_eight_three_three} \
      ~{four_three_seven_eight_seven_four_zero_fourfour} \
      ~{five_nine_nine_one_four_nine_three_one_two} \
      ~{one_two_three_five_nine_nine_eight_eight_eight}
  >>>
  parameter_meta {
    five_five_five_nine_nine_one_three_three_two: "621766759 1322453093  853629228  686962251 "
    eight_two_three_seven_eight_one_three_six: "420615890 3467563163  541562091 3535949864 "
    eight_four_nine_three_six_two_one_one_nine: "862871471  797858058 2867774932 2821282612 "
    eight_one_five_nine_four_three_zero_four_five: "929020012 2995251018 3371283296 3608029049 "
    one_three_four_three_six_six_two_five_four: "430507376 1924011722  276713377  196481886 "
    four_two_seven_eight_o_netwosix_five_two: "286876201  823134128 1627554964 3745564327 "
    eight_two_nine_four_six_six_eight_three_three: "821587464 1746693036 1006492428 1595312919 "
    four_three_seven_eight_seven_four_zero_fourfour: "595759426  641721026 1636065708 3899136933 "
    five_nine_nine_one_four_nine_three_one_two: "939093251 1523003209  106601097  376589484 "
    one_two_three_five_nine_nine_eight_eight_eight: "472658308 1053598179 1012713758 3481064843 "
  }
  output {
    File out_stdout = stdout()
  }
}