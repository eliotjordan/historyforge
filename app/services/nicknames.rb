# frozen_string_literal: true

# Nickname lists adapted from https://www.usgenweb.org/research/nicknames.html

class Nicknames
  def self.matches_for(name, gender = 'all')
    match_against = case gender.downcase.first
                    when 'm' then MALE_NAMES
                    when 'f' then FEMALE_NAMES
                    else
                      ALL_NAMES
                    end
    matches = match_against.select { |names| names.include?(name) }
    matches.flatten.uniq.presence || [name]
  end

  MALE_NAMES = [
    %w{Aaron Erin Ron Ronnie},
    %w{Abel Ab Abe Eb Ebbie},
    %w{Abiah Abijah A.B. Ab Biah},
    %w{Abiel Biel Ab},
    %w{Abraham Abram Abe},
    %w{Abner Ab},
    %w{Adam Ad Ade},
    %w{Adelbert Ad Ade Albert Bert Del Delbert Elbert},
    %w{Adolph Adolphus Ad Dolph Olph},
    %w{Alan Al},
    %w{Alanson Alan Al Lonson},
    %w{Albert Al Bert Elbert Adelbert},
    %w{Aldrich Al Rich Richie},
    %w{Alexander Al Alex Eleck Sandy},
    %w{Alfred Al Fred},
    %w{Alonzo Al Lon Lonzo},
    %w{Anderson Ander Andy Sonny},
    %w{Andrew Andy Drew},
    %w{Anthony Tony},
    %w{Archibald Archie Baldo},
    %w{Arthur Art},
    %w{Asaph Asa},
    %w{Asahel Asa},
    %w{Azariah Aze Riah},
    %w{Augustus Augustine August Austin Gus},
    %w{Barnabas Barney},
    %w{Bartholomew Bart Bartel Bat Mees Meus},
    %w{Benedict Ben Bennie},
    %w{Benjamin Ben Bennie Benjy Jamie},
    %w{Bernard Barney Berney},
    %w{Bradford Brad Ford},
    %w{Broderick Ricky Brady Brody},
    %w{Calvin Cal Vin Vinny},
    %w{Cameron Cam Ronny Ron},
    %w{Carl see Charles},
    %w{Casey Kasey K.C.},
    %w{Cedric Ced Rick Ricky},
    %w{Charles Carl Charlie Chick Chuck},
    %w{Chauncey Chan},
    %w{Chester Chet},
    %w{Christopher Christian Chris Kit},
    %w{Clarence Clair Clare},
    %w{Clement Clem},
    %w{Clifford Cliff Ford},
    %w{Clifton Cliff Tony},
    %w{Columbus Clum},
    %w{Conrad Con Conny},
    %w{Cornelius Con Conny Corny Niel},
    %w{Courtney Court Curt},
    %w{Cyrenius Cene Cy Renius Serene Swene},
    %w{Curtis Curt},
    %w{Dalton Dahl Dal},
    %w{Daniel Dan Danny},
    %w{David Dave Davey Day},
    %w{Delbert Bert Del},
    %w{Dennis Denny Dennison},
    %w{Derrick Eric Rick Ricky},
    %w{Donald Don Donny},
    %w{Ebenezer Eben Eb Ebbie},
    %w{Edmund Ed Ned Ted},
    %w{Edward Ed Eddie Eddy Ned Ted Teddy},
    %w{Edwin Ed Ned Win},
    %w{Elbert see Adelbert Albert},
    %w{Eleazer Lazar},
    %w{Elias Eli Lee Lias},
    %w{Elijah Eli Lige},
    %w{Eliphalet Left},
    %w{Elisha Eli Lish},
    %w{Ellswood Elswood Elsey Elze Elsie},
    %w{Elwood Woody},
    %w{Emanuel Manny Manuel},
    %w{Ephraim Eph},
    %w{Epaphroditius Dite Ditus Dyce Dyche Eppa},
    %w{Eric Rick Ricky Derrick},
    %w{Ernest Ernie},
    %w{Eugene Gene},
    %w{Ezekiel Ez Zeke},
    %w{Ezra Ez},
    %w{Ferdinand Ferdie},
    %w{Francis Frank Fran},
    %w{Franklin Frank Fran},
    %w{Frederick Fred Freddy Fritz},
    %w{Gabriel Gabe Gabby},
    %w{Geoffrey Jeffrey Geoff Jeff},
    %w{Gerald Jerry Gerry},
    %w{Gilbert Gil Bert Wilber},
    %w{Harold Hal Harry},
    %w{Henry Hal Hank Harry},
    %w{Herbert Herb Bert},
    %w{Hezekiah Hez Hy Kiah},
    %w{Hiram Hy},
    %w{Hopkins Hop Hopp},
    %w{Horace Horry},
    %w{Hubert Hugh Bert Hub},
    %w{Ignatius Iggy Nace Nate Natius},
    %w{Isaac Ike Zeke},
    %w{Isidore Izzy},
    %w{Jacob Jaap Jake Jay Jacobus.},
    %w{James Jamie Jem Jim Jimmy},
    %w{Jay see Jacob},
    %w{Jedidiah Jed},
    %w{Jefferson Jeff Sonny},
    %w{Jehiel Hiel},
    %w{Jeremiah Jereme Jerry},
    %w{John Jack Jock Johnny Jonathan Jon},
    %w{Joseph Joe Joey Jos Jody},
    %w{Joshua Josh Jos},
    %w{Josiah Jos},
    %w{Judson Jud Sonny},
    %w{Julias Julian Jule},
    %w{Junior JR June Junie},
    %w{K.C. Kasey Casey},
    %w{Kenneth Ken Kenny Kendall Kendrick Kent},
    %w{Lafayette Fate Laffie},
    %w{Lamont Monty},
    %w{Lawrence Laurence Larry Lon Lonny Lorne Lorry},
    %w{Lemuel Lem},
    %w{Leonard Leo Leon Len Lenny Lineau},
    %w{LeRoy L.R. Lee Roy},
    %w{Leslie Les},
    %w{Lester Les},
    %w{Levi Lee},
    %w{Lincoln Link},
    %w{Lorenzo Loren},
    %w{Louis Lou Louie},
    %w{Lucias Lucas Luke},
    %w{Luther Luke},
    %w{Lyndon Lynn Lindy},
    %w{Marcus Mark},
    %w{Martin Marty},
    %w{Marvin Marv},
    %w{Matthew Matthias Matt Thias Thys},
    %w{Maurice Morris Morey},
    %w{Mervyn Merv},
    %w{Micah Michael Michael Mike Micah Mick Micky},
    %w{Mitchell Mitch},
    %w{Montgomery Monty Gum},
    %w{Morris Morry Morrie},
    %w{Morton Mort Morty},
    %w{Napoleon Nap Nappy Leon},
    %w{Nathan Nate Nathaniel Jonathan},
    %w{Nathaniel Nathan Nate Nat Natty Than},
    %w{Nicholas Nick Claas Claes},
    %w{Norbert Bert Norby},
    %w{Obadiah Diah Dyer Obed Obie},
    %w{Oliver Ollie},
    %w{Oswald Ossy Ozzy Waldo},
    %w{Patrick Paddy Pat Patsy Pate Peter},
    %w{Pelegrine Perry},
    %w{Percival Percy},
    %w{Peter Pete Pate},
    %w{Philetus Leet Phil},
    %w{Phillip Phil},
    %w{Prescott Scott Scotty Pres},
    %w{Ralph sometimes for Raphael},
    %w{Randolph Randy Dolph},
    %w{Raymond Ray},
    %w{Reginald Reg Reggie Naldo Renny},
    %w{Reuben Rube},
    %w{Richard Dick Dickon Rich Rick Ricky},
    %w{Robert Bob Dob Dobbin Hob Hobkin Rob Robby Bobby Robin Rupert},
    %w{Roger Rodger Roge Hodge Rod Rodney},
    %w{Roland Lanny Rollo Rolly Orlando},
    %w{Ronald Ron Ronny Naldo},
    %w{Rudolph Rudolphus Dolph Olph Rolf Rudy},
    %w{Russell Russ Rusty},
    %w{Samuel Sam Sammy},
    %w{Seymour Morey See},
    %w{Shelton Shelly Shel Tony},
    %w{Sheridan Dan Danny Sher},
    %w{Sidney Sid Syd},
    %w{Silas Si},
    %w{Simon Simeon Si Sion},
    %w{Smith Smitty},
    %w{Solomon Sal Salmon Saul Sol Solly Zolly},
    %w{Stephen Steven Steve Steph},
    %w{Sullivan Sully Van},
    %w{Sylvester Si Sly Sy Syl Vester Vet Vessie},
    %w{Terence Terry},
    %w{Thaddeus Thad},
    %w{Theodore Ted Teddy Theo},
    %w{Thomas Tom Thom Tommy},
    %w{Timothy Tim Timmy},
    %w{Tobias Toby Bias},
    %w{Uriah Riah},
    %w{Valentine Felty Feltie},
    %w{Vincent Vinson Vince Vin Vinny},
    %w{Wallace Wally},
    %w{Wilfred Will Willie Fred},
    %w{William Will Willie Bill Billy Bell Bela},
    %w{Winfield Win Winny Field},
    %w{Woodrow Wood Woody Drew},
    %w{Zachariah Zach Zachy Zeke},
    %w{Zebedee Zeb},
    %w{Zedediah Zed Diah Dyer},
    %w{Zephaniah Zeph}
  ].freeze

  FEMALE_NAMES = [
    %w{Abigail Abby Nabby Gail},
    %w{Adaline Adeline Ada Addy Dell Delia Lena},
    %w{Adelaide Addy Adele Dell Della Heidi},
    %w{Adelphia Adele Addy Dell Delphia Philly},
    %w{Agatha Aggy},
    %w{Agnes Aggy Inez Nessa},
    %w{Aileen Allie Lena},
    %w{Alberta Allie Bert Bertie},
    %w{Alexandra Alex Alla Sandy},
    %w{Alfreda Alfy Freda Freddy Frieda},
    %w{Alice Alicia Allie Elsie Lisa},
    %w{Almena Allie Mena},
    %w{Amanda Manda Mandy},
    %w{Amelia Emily Mel Millie Amy},
    %w{Ann Anne Annie Nan Nanny Nana Nancy Antoinette Christiana Roseanne},
    %w{Antoinette Antonia Ann Tony Netta},
    %w{Arabella Arabelle Ara Arry Belle Bella},
    %w{Arlene Arly Lena},
    %w{Armena Arry Mena},
    %w{Asenath Assene Natty Sene},
    %w{Augusta Augustina Aggy Gatsy Gussie Tina},
    %w{Barbara Bab Babs Barby Bobbie},
    %w{Beatrice Bea Trisha Trix Trixie},
    %w{Belinda Belle Linda},
    %w{Bernice Bunny},
    %w{Bertha Birdie Bert Bertie},
    %w{Bridget Biddie Biddy Bridgie Bridie},
    %w{Camille Cammie Millie},
    %w{Cornelia Cornie Nelia},
    %w{Carol Caroline Carolyn Carrie Cassie Lynn},
    %w{Cassandra Cassie Sandra Sandy},
    %w{Catherine Cathleen Katherine Kathleen Cathy Kathy Katy Cassie Kay Kit Kittie Trina Lena},
    %w{Cecilia Celia Cissy},
    %w{Charlotte Char Lottie Lotta Sherry},
    %w{Christine Christina Christiana Kristine Chris Kris Crissy Christy Kristy Tina},
    %w{Clarinda Clara},
    %w{Clarissa Clara Cissy},
    %w{Constance Connie},
    %w{Cordelia Cordy Delia},
    %w{Cornelia Corny Nelle Nelly Nelia},
    %w{Cynthia Cindy Cintha},
    %w{Darlene Lena Darry},
    %w{Deborah Debora Debby Debbie Deb},
    %w{Deliverance Della Delly Dilly},
    %w{Delores Dell Lola Lolly Della Dee},
    %w{Dicey Dicie},
    %w{Dorcus Darkey},
    %w{Dorothy Dolly Dot Dortha Dotty},
    %w{Edith Edie},
    %w{Elaine Eleanor Elaine Ellen Ellie Lanna Lenora Nelly Nora Ellen Helen},
    %w{Elizabeth Eliza Bess Bessie Beth Betsy Betty Lib Libby Liza Lisa Liz Lizzie},
    %w{Elmira Elly Ellie Mira},
    %w{Emily Emmy Millie Emma Amelia Emeline},
    %w{Emeline Em Emily Emma Emmy Milly},
    %w{Estelle Estella Essy Stella},
    %w{Esther see Hester},
    %w{Evaline Eva Eve Lena},
    %w{Faith Fay},
    %w{Fidelia Delia},
    %w{Florence Flo Flora Flossy},
    %w{Frances Fanny Fran Cissy Frankie Sis},
    %w{Fredericka Freda Freddy Ricka Frieda},
    %w{Gabrielle Gabriella Gabby Ella},
    %w{Genevieve Eve Jean Jenny},
    %w{Georgia Georgie Georgy},
    %w{Geraldine Dina Gerry Gerrie Jerry},
    %w{Gertrude Trudy Gert Gertie},
    %w{Gwendolyn Gwen Wendy},
    %w{Hannah Nan Nanny Anna Johannah Susannah},
    %w{Harriet Hattie},
    %w{Helen Helene Ella Ellen Ellie Lena},
    %w{Heloise Eloise Lois Louise Elouise},
    %w{Henrietta Etta Etty Hank Nettie Retta},
    %w{Hermione Hermie},
    %w{Hepsibah Hephsibah Hipsie},
    %w{Hester Hessy Esther Hetty},
    %w{Irene Rena},
    %w{Isabel Isabelle Isabella Bella Belle Ib Issy Nib Nibby Tibbie},
    %w{Isadora Dora Issy},
    %w{Jane Janie Jean Jennie Jessie},
    %w{Janet Jessie Jan},
    %w{Jean Jeanne Jane Jeannie},
    %w{Jeanette Janet Jean Jessie Nettie},
    %w{Jemima Mima},
    %w{Jennifer Jennie},
    %w{Jessica Jessie},
    %w{Joan Nonie Joanna Johannah},
    %w{Joanna Johannah Joan Jody Hannah},
    %w{Josephine Jody Jo Joey Josey Fina},
    %w{Joyce Joy},
    %w{Juanita Nettie Nita},
    %w{Julia Julie Jill},
    %w{Keziah Kizza Kizzie},
    %w{Lavina Lavinia Ina Vina Viney},
    %w{Letitia Lettie Lettice Titia Tish},
    %w{Lillah Lily Lilly Lil Lolly},
    %w{Lillian Lil Lilly Lolly},
    %w{Linda Lindy Lynn Belinda Melinda Philinda etc.},
    %w{Lisa Elizabeth Alice Melissa},
    %w{Loretta Etta Lorrie Retta},
    %w{Lorraine Lorrie},
    %w{Louise Louisa Lou Eliza Lois},
    %w{Lucille Lu Lou Cille Lucy},
    %w{Lucinda Cindy Lu Lou Lucy},
    %w{Luella Ella Lu Lula},
    %w{Lydia Lidia Lyddy},
    %w{Lynn Carolyn Madeline Linda},
    %w{Madeline Lena Maddy Madge Magda Maggie Maida Maud},
    %w{Magdelina Lena Madge Magda},
    %w{Mahala Hallie},
    %w{Margaret Margaretta Daisy Gretta Madge Maggie Meg Midge Peg Peggy Rita Margery Marge Margie},
    %w{Martha Marty Mat Mattie Patsy Patty},
    %w{Mary Molly Polly Mae Mamie Mitzi},
    %w{Matilda Tilly Matty Maud},
    %w{Mehitabel Hetty Hitty Mabel Mitty},
    %w{Melinda Linda Lindy Mel Mindy},
    %w{Melissa Lisa Lissa Mel Milly Missy},
    %w{Michelle Mickey},
    %w{Mildred Milly},
    %w{Millicent Milly Missy},
    %w{Minerva Minnie},
    %w{Miranda Mandy Mira Randy},
    %w{Miriam Mimi Mitzi},
    %w{Nancy Nan Ann},
    %w{Natalie Natty Nettie},
    %w{Olive Olivia Ollie Nollie Livia},
    %w{Parmelia Amelia Melia Milly},
    %w{Patience Pat Patty},
    %w{Patricia Pat Patty Patsy Tricia},
    %w{Paula Paulina Polly Lina},
    %w{Penelope Penny},
    %w{Philinda Linda},
    %w{Priscilla Cissy Cilla Prissy},
    %w{Prudence Prudy Prue},
    %w{Rachel Shelly},
    %w{Rebecca Reba Becca Becky Beck},
    %w{Regina Reggie Gina},
    %w{Relief Leafa},
    %w{Roberta Bobbie Robbie Bert Bertie Birdie},
    %w{Rosabel Rosabella Belle Rosa Rose Roz},
    %w{Rosalyn Rosalinda Rosa Rose Linda Roz},
    %w{Roseann Roseanna Rose Ann Roz Rosie},
    %w{Roxanne Roxanna Ann Rose Roxie},
    %w{Sabrina Brina},
    %w{Sandra Sandy Cassandra Alexandra},
    %w{Sarah Sally Sadie},
    %w{Selina Celina Lena},
    %w{Serena Rena},
    %w{Shirley Lee Sherry Shirl},
    %w{Sonia Sonie},
    %w{Submit Mitty},
    %w{Susan Susannah Sue Sukey Susie Hannah},
    %w{Tabitha Tabby},
    %w{Theresa Terry Tess Tessie Tessa Thirza Thursa Tracy},
    %w{Tryphena Phena},
    %w{Valerie Val},
    %w{Vanessa Nessa Essa Vanna},
    %w{Veronica Franky Frony Ron Ronnie Ronna Vonnie},
    %w{Victoria Vicky},
    %w{Virginia Ginger Ginny Jane Jennie Virgy},
    %w{Wilhelmina Mina Willie Wilma Minnie},
    %w{Winifred Winnie},
  ].freeze

  ALL_NAMES = (MALE_NAMES + FEMALE_NAMES).freeze
end
