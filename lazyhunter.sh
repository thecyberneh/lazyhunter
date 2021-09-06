#!/bin/bash

by="\033[1;33m"
bye="\033[1;00m"
br="\033[31m"
bre="\033[00m"

printf ""$by"

**             **       ********   **    **   **      **   **     **   ****     **   **********   ********   *******  
/**            ****     //////**   //**  **   /**     /**  /**    /**  /**/**   /**  /////**///   /**/////   /**////** 
/**           **//**         **     //****    /**     /**  /**    /**  /**//**  /**      /**      /**        /**   /** 
/**          **  //**       **       //**     /**********  /**    /**  /** //** /**      /**      /*******   /*******  
/**         **********     **         /**     /**//////**  /**    /**  /**  //**/**      /**      /**////    /**///**  
/**        /**//////**    **          /**     /**     /**  /**    /**  /**   //****      /**      /**        /**  //** 
/********  /**     /**   ********     /**     /**     /**  //*******   /**    //***      /**      /********  /**   //**
////////   //      //   ////////      //      //      //    ///////    //      ///       //       ////////   //     // 

"$bye""


printf ""$by"

Twitter:-    https://twitter.com/IAmNehPatel
Instagram :- https://www.instagram.com/thecyber.neh/
Linkedin :-  https://www.linkedin.com/in/thenehpatel/


"$bye""




read -p "Enter Domain name without Https/www:  " DOMAIN 

echo -e "$by" Domain is $DOMAIN "$bye"
mkdir "$DOMAIN"
cd "$DOMAIN"

echo -e "$by"ALL FILES WILL SAVE IN FOLDER : $DOMAIN "$bye"


subfinder -d ${DOMAIN} -nW > ${DOMAIN}-activeDomain.txt

cat ${DOMAIN}-activeDomain.txt | waybackurls > ${DOMAIN}-waybackurls.txt 

echo -e "$by"SELECT VULNERABILITY "$bye"

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m xss\e[0m      \e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m lfi\e[0m   \n"                                
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m ssti\e[0m     \e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m interestingparams   \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m ssrf\e[0m     \e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m interestingsubs   \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m sqli\e[0m     \e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m interestingEXT  \e[0m\n"                
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m redirect\e[0m \e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m idor   \e[0m\n"                
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m rce\e[0m      \e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m debug_logic   \e[0m \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m jsvar\e[0m \n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

if [[ $option == 1 || $option == 01 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf xss | kxss > ${DOMAIN}-xssResults.txt
echo -e "$by" RESULTS SAVED IN FILE: ${DOMAIN}-xssResults.txt "$bye"

elif [[ $option == 2 || $option == 02 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf ssti > ${DOMAIN}-sstiResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-sstiResults.txt "$bye"


elif [[ $option == 3 || $option == 03 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf ssrf > ${DOMAIN}-ssrfResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-ssrfResults.txt "$bye"


elif [[ $option == 4 || $option == 04 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf sqli > ${DOMAIN}-sqliResults.txt
echo -e "$by" RESULTS SAVED IN FILE: ${DOMAIN}-sqliResults.txt "$bye"


elif [[ $option == 5 || $option == 05 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf redirect > ${DOMAIN}-redirectResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-redirectResults.txt "$bye"


elif [[ $option == 6 || $option == 06 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf rce > ${DOMAIN}-rceResults.txt
echo -e "$by" RESULTS SAVED IN FILE: ${DOMAIN}-rceResults.txt "$bye"


elif [[ $option == 7 || $option == 07 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf jsvar > ${DOMAIN}-jsvarResults.txt
echo -e "$by" RESULTS SAVED IN FILE: ${DOMAIN}-rceResults.txt "$bye"


elif [[ $option == 8 || $option == 08 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf lfi > ${DOMAIN}-lfiResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-lfiResults.txt "$bye"


elif [[ $option == 9 || $option == 09 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf interestingparams > ${DOMAIN}-interestingparamsResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-interestingparamsResults.txt "$bye"


elif [[ $option == 10 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf interestingsubs > ${DOMAIN}-interestingsubsResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-interestingsubsResults.txt "$bye"



elif [[ $option == 11 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf interestingEXT > ${DOMAIN}-interestingEXTResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-interestingEXTResults.txt "$bye"


elif [[ $option == 12 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf idor > ${DOMAIN}-idorResults.txt
echo -e "$by" RESULTS SAVED IN FILE:  ${DOMAIN}-idorResults.txt "$bye"


elif [[ $option == 13 ]]; then
cat ${DOMAIN}-waybackurls.txt | gf debug_logic > ${DOMAIN}-debug_logicResults.txt
echo -e "$by" RESULTS SAVED IN FILE: ${DOMAIN}-debug_logicResults.txt "$bye"

fi
