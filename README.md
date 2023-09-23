# GENOME_ASSEMBLY_DATA_SUMMARY
#### NAME:  Chandrima Modak
#### Language: Bash
#### Date of Project completion: 03 Sep 2023

## Description
This Bash script downloads sequence files from UCSC genome bank and makes a data_summary of the sequence files 
of human chromosomes of user's interest. This script will ask the user to copy and paste the ftp link of the genome sequence of interest from 
[UCSC Genome Database](https://hgdownload.cse.ucsc.edu/goldenpath/hg38/chromosomes/).

## Execution
To run this file
1. open terminal by pressing Ctrl+Alt+T
2. ```mkdir Informatics_573```
3. ```cd Informatics_573```
4. ```chmod +x assembly.sh ```
5. ```./assembly.sh```
6. copy and paste the link in the ftp format from [UCSC Genome Database](https://hgdownload.cse.ucsc.edu/goldenpath/hg38/chromosomes/)
> ftp format to download multiple files of particular pattern should be __(ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr*_*)__
*for example ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr1_**
