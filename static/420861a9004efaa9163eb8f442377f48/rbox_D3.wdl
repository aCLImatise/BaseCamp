version 1.0

task RboxD3 {
  input {
    Int? zero_dot_fourfour_seven_one_one_three_six_three_zero_six_one_six_seven_zero_four_eight
    Int? zero_dot_one_three_six_three_six_nine_seven_three_one_eight_five_four_six_two_five_six
    Int? zero_dot_three_nine_zero_four_two_four_seven_five_one_four_five_two_eight_six_eight_three
    Int? zero_dot_three_six_seven_three_one_five_three_four_seven_six_zero_nine_five_one_zero_five
    Boolean? zero_dot_zero_nine_four_one_two_four_nine_three_two_fourfour_eight_zero_eight_six_three_five
    Int? zero_dot_zero_one_nine_one_two_zero_seven_one_four_three_nine_eight_eight_six_five_nine_four
    Int? zero_dot_three_three_five_one_three_three_seven_one_three_zero_zero_one_five_zero_two_four
    Int? zero_dot_two_one_five_nine_one_one_five_zero_nine_four_nine_six_seven_one_six_two
    Int? zero_dot_zero_five_three_nine_eight_nine_nine_eight_one_three_one_fourfour_two_four_seven_eight
    Int? zero_dot_two_zero_five_zero_eight_one_four_two_four_seven_five_seven_two_two_five_seven
    Int? zero_dot_zero_zero_four_six_three_eight_six_four_six_one_nine_nine_nine_one_four_zero_three
    Int? zero_dot_zero_nine_nine_one_five_six_six_nine_two_five_four_five_four_seven_eight_nine_two
    Int? zero_dot_one_zero_five_one_five_five_zero_zero_three_nine_seven_three_nine_fourfour_five
    Int? zero_dot_three_seven_zero_two_six_eight_six_four_two_zero_zero_eight_three_eight_three_two
    Int? zero_dot_three_four_eight_eight_nine_eight_one_eight_eight_seven_two_four_one_six_nine_nine
    Boolean? zero_dot_two_two_one_nine_eight_six_one_eight_four_two_two_five_one_seven_zero_four
    Boolean? zero_dot_three_five_two_four_five_six_nine_two_four_six_one_zero_four_two_zero_four
    Boolean? zero_dot_zero_seven_nine_five_two_seven_four_nine_five_four_nine_eight_three_eight_nine_six_four
    Int? zero_dot_zero_seven_zero_one_four_three_five_four_six_five_one_nine_six_five_two_eight_nine
    Int? zero_do_tones_even_seven_nine_six_eight_zero_six_three_seven_eight_eight_seven_two_one_two
  }
  command <<<
    rbox D3 \
      ~{if defined(zero_dot_fourfour_seven_one_one_three_six_three_zero_six_one_six_seven_zero_four_eight) then ("-0.4471136306167048 " +  '"' + zero_dot_fourfour_seven_one_one_three_six_three_zero_six_one_six_seven_zero_four_eight + '"') else ""} \
      ~{if defined(zero_dot_one_three_six_three_six_nine_seven_three_one_eight_five_four_six_two_five_six) then ("-0.1363697318546256 " +  '"' + zero_dot_one_three_six_three_six_nine_seven_three_one_eight_five_four_six_two_five_six + '"') else ""} \
      ~{if defined(zero_dot_three_nine_zero_four_two_four_seven_five_one_four_five_two_eight_six_eight_three) then ("-0.3904247514528683 " +  '"' + zero_dot_three_nine_zero_four_two_four_seven_five_one_four_five_two_eight_six_eight_three + '"') else ""} \
      ~{if defined(zero_dot_three_six_seven_three_one_five_three_four_seven_six_zero_nine_five_one_zero_five) then ("-0.3673153476095105 " +  '"' + zero_dot_three_six_seven_three_one_five_three_four_seven_six_zero_nine_five_one_zero_five + '"') else ""} \
      ~{if (zero_dot_zero_nine_four_one_two_four_nine_three_two_fourfour_eight_zero_eight_six_three_five) then "-0.09412493244808635" else ""} \
      ~{if defined(zero_dot_zero_one_nine_one_two_zero_seven_one_four_three_nine_eight_eight_six_five_nine_four) then ("-0.01912071439886594 " +  '"' + zero_dot_zero_one_nine_one_two_zero_seven_one_four_three_nine_eight_eight_six_five_nine_four + '"') else ""} \
      ~{if defined(zero_dot_three_three_five_one_three_three_seven_one_three_zero_zero_one_five_zero_two_four) then ("-0.3351337130015024 " +  '"' + zero_dot_three_three_five_one_three_three_seven_one_three_zero_zero_one_five_zero_two_four + '"') else ""} \
      ~{if defined(zero_dot_two_one_five_nine_one_one_five_zero_nine_four_nine_six_seven_one_six_two) then ("-0.2159115094967162 " +  '"' + zero_dot_two_one_five_nine_one_one_five_zero_nine_four_nine_six_seven_one_six_two + '"') else ""} \
      ~{if defined(zero_dot_zero_five_three_nine_eight_nine_nine_eight_one_three_one_fourfour_two_four_seven_eight) then ("-0.05398998131442478 " +  '"' + zero_dot_zero_five_three_nine_eight_nine_nine_eight_one_three_one_fourfour_two_four_seven_eight + '"') else ""} \
      ~{if defined(zero_dot_two_zero_five_zero_eight_one_four_two_four_seven_five_seven_two_two_five_seven) then ("-0.2050814247572257 " +  '"' + zero_dot_two_zero_five_zero_eight_one_four_two_four_seven_five_seven_two_two_five_seven + '"') else ""} \
      ~{if defined(zero_dot_zero_zero_four_six_three_eight_six_four_six_one_nine_nine_nine_one_four_zero_three) then ("-0.00463864619991403 " +  '"' + zero_dot_zero_zero_four_six_three_eight_six_four_six_one_nine_nine_nine_one_four_zero_three + '"') else ""} \
      ~{if defined(zero_dot_zero_nine_nine_one_five_six_six_nine_two_five_four_five_four_seven_eight_nine_two) then ("-0.09915669254547892 " +  '"' + zero_dot_zero_nine_nine_one_five_six_six_nine_two_five_four_five_four_seven_eight_nine_two + '"') else ""} \
      ~{if defined(zero_dot_one_zero_five_one_five_five_zero_zero_three_nine_seven_three_nine_fourfour_five) then ("-0.1051550039739445 " +  '"' + zero_dot_one_zero_five_one_five_five_zero_zero_three_nine_seven_three_nine_fourfour_five + '"') else ""} \
      ~{if defined(zero_dot_three_seven_zero_two_six_eight_six_four_two_zero_zero_eight_three_eight_three_two) then ("-0.3702686420083832 " +  '"' + zero_dot_three_seven_zero_two_six_eight_six_four_two_zero_zero_eight_three_eight_three_two + '"') else ""} \
      ~{if defined(zero_dot_three_four_eight_eight_nine_eight_one_eight_eight_seven_two_four_one_six_nine_nine) then ("-0.3488981887241699 " +  '"' + zero_dot_three_four_eight_eight_nine_eight_one_eight_eight_seven_two_four_one_six_nine_nine + '"') else ""} \
      ~{if (zero_dot_two_two_one_nine_eight_six_one_eight_four_two_two_five_one_seven_zero_four) then "-0.2219861842251704" else ""} \
      ~{if (zero_dot_three_five_two_four_five_six_nine_two_four_six_one_zero_four_two_zero_four) then "-0.3524569246104204" else ""} \
      ~{if (zero_dot_zero_seven_nine_five_two_seven_four_nine_five_four_nine_eight_three_eight_nine_six_four) then "-0.07952749549838964" else ""} \
      ~{if defined(zero_dot_zero_seven_zero_one_four_three_five_four_six_five_one_nine_six_five_two_eight_nine) then ("-0.07014354651965289 " +  '"' + zero_dot_zero_seven_zero_one_four_three_five_four_six_five_one_nine_six_five_two_eight_nine + '"') else ""} \
      ~{if defined(zero_do_tones_even_seven_nine_six_eight_zero_six_three_seven_eight_eight_seven_two_one_two) then ("-0.1779680637887212 " +  '"' + zero_do_tones_even_seven_nine_six_eight_zero_six_three_seven_eight_eight_seven_two_one_two + '"') else ""}
  >>>
  parameter_meta {
    zero_dot_fourfour_seven_one_one_three_six_three_zero_six_one_six_seven_zero_four_eight: "0.180269244253196"
    zero_dot_one_three_six_three_six_nine_seven_three_one_eight_five_four_six_two_five_six: ""
    zero_dot_three_nine_zero_four_two_four_seven_five_one_four_five_two_eight_six_eight_three: "0.3112398725076607"
    zero_dot_three_six_seven_three_one_five_three_four_seven_six_zero_nine_five_one_zero_five: "0.1161694083623171"
    zero_dot_zero_nine_four_one_two_four_nine_three_two_fourfour_eight_zero_eight_six_three_five: ""
    zero_dot_zero_one_nine_one_two_zero_seven_one_four_three_nine_eight_eight_six_five_nine_four: "0.3771932708955077"
    zero_dot_three_three_five_one_three_three_seven_one_three_zero_zero_one_five_zero_two_four: "0.2900028531252128"
    zero_dot_two_one_five_nine_one_one_five_zero_nine_four_nine_six_seven_one_six_two: "0.4091887121936323"
    zero_dot_zero_five_three_nine_eight_nine_nine_eight_one_three_one_fourfour_two_four_seven_eight: "0.2158587374628556"
    zero_dot_two_zero_five_zero_eight_one_four_two_four_seven_five_seven_two_two_five_seven: ""
    zero_dot_zero_zero_four_six_three_eight_six_four_six_one_nine_nine_nine_one_four_zero_three: "0.3573195562042988"
    zero_dot_zero_nine_nine_one_five_six_six_nine_two_five_four_five_four_seven_eight_nine_two: ""
    zero_dot_one_zero_five_one_five_five_zero_zero_three_nine_seven_three_nine_fourfour_five: "0.3590067092569645"
    zero_dot_three_seven_zero_two_six_eight_six_four_two_zero_zero_eight_three_eight_three_two: ""
    zero_dot_three_four_eight_eight_nine_eight_one_eight_eight_seven_two_four_one_six_nine_nine: ""
    zero_dot_two_two_one_nine_eight_six_one_eight_four_two_two_five_one_seven_zero_four: ""
    zero_dot_three_five_two_four_five_six_nine_two_four_six_one_zero_four_two_zero_four: ""
    zero_dot_zero_seven_nine_five_two_seven_four_nine_five_four_nine_eight_three_eight_nine_six_four: ""
    zero_dot_zero_seven_zero_one_four_three_five_four_six_five_one_nine_six_five_two_eight_nine: ""
    zero_do_tones_even_seven_nine_six_eight_zero_six_three_seven_eight_eight_seven_two_one_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}