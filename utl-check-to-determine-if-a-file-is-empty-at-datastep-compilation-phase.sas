%let pgm=utl-check-to-determine-if-a-file-is-empty-at-datastep-compilation-phase;

Check to determine if a file is empty at datastep compilation phase

Note the status of the file is available at datastep compilation so
you can condition datastep execution based on end condition;

/*---- create empty dataset                      ----*/
data _null_;
  file "d:/txt/empty.txt";
run;quit;


/*---- stop dataset executuon if file is empty   ----*/
data _null_;

   if empty then stop;

   infile "d:/txt/empty.txt" end = empty ; /*---- 1=empty ----*/

    x=2;
    put x=;

run;quit;

github
https://tinyurl.com/yc5wuyvy
https://github.com/rogerjdeangelis/utl-check-to-determine-if-a-file-is-empty-at-datastep-compilation-phase

related to
https://tinyurl.com/y65uss8w
https://communities.sas.com/t5/SAS-Programming/Loop-through-files-in-folder-and-import-if-not-empty/m-p/560206

/*        _                                       __ _
 ___  ___| |_   _ __ ___   __ _  ___ _ __ ___    / _| | __ _  __ _
/ __|/ _ \ __| | `_ ` _ \ / _` |/ __| `__/ _ \  | |_| |/ _` |/ _` |
\__ \  __/ |_  | | | | | | (_| | (__| | | (_) | |  _| | (_| | (_| |
|___/\___|\__| |_| |_| |_|\__,_|\___|_|  \___/  |_| |_|\__,_|\__, |
                                                             |___/
*/


/*                   _                          _            __ _ _
(_)_ __  _ __  _   _| |_    ___ _ __ ___  _ __ | |_ _   _   / _(_) | ___
| | `_ \| `_ \| | | | __|  / _ \ `_ ` _ \| `_ \| __| | | | | |_| | |/ _ \
| | | | | |_) | |_| | |_  |  __/ | | | | | |_) | |_| |_| | |  _| | |  __/
|_|_| |_| .__/ \__,_|\__|  \___|_| |_| |_| .__/ \__|\__, | |_| |_|_|\___|
        |_|                              |_|        |___/
*/

* create empty file;
data _null_;
  file "d:/txt/empty.txt";
run;quit;
/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

data _null_ ;
 infile "d:/txt/empty.txt" end = empty ;
 call symputx("empty",empty); /*---- 1 if empty ----*/
run;
%put %sysfunc(ifc(&empty,File is empty,File is not empty));;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

File is empty

/*                   _                 _                          _
(_)_ __  _ __  _   _| |_   _ __   ___ | |_    ___ _ __ ___  _ __ | |_ _   _
| | `_ \| `_ \| | | | __| | `_ \ / _ \| __|  / _ \ `_ ` _ \| `_ \| __| | | |
| | | | | |_) | |_| | |_  | | | | (_) | |_  |  __/ | | | | | |_) | |_| |_| |
|_|_| |_| .__/ \__,_|\__| |_| |_|\___/ \__|  \___|_| |_| |_| .__/ \__|\__, |
        |_|                                                |_|        |___/
*/


data _null_;
  file "d:/txt/empty.txt";
  x=1;
  put x;
run;quit;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

File is not empty

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
