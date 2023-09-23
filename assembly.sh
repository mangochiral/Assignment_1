#!/bin/bash

# Dowloads sequence *.fa.gz files from the website
for i in 1 2 3
do
########################################################################################################
    # Takes website link from user
    read -p "Enter the ftp link: " seq_url
    if [[ "$seq_url" = ['ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr']*[*]* ]]
    then
        echo "Dowloading files..."
        echo " "
        wget --timestamping "$seq_url"
        echo "Dowload complete!"
        echo " "
        sleep 2
########################################################################################################
        # Extracts sequence *.fa.gz files from the website
        echo "Unzipping is files..."
        echo " "
        gunzip *.fa.gz
        echo "Unzipping is complete!"
        echo " "
        sleep 2
########################################################################################################
        # Lists all the file details such as name, size and permissions and appends them in a text file
        {
            echo $'\t\t   Program\n\t\t\tby\n\t\tChandrima_Modak\n'
            ls -lh chr*
            echo " "
        }  >> data_summary.txt
########################################################################################################
        # File path where the sequence files are stored
        file_path=$PWD
########################################################################################################        
        # This sections loops through the directory to search for the files with .fa file extension
        # Then it records the number of lines in each file along with the file name and appends them to the text file
        # Next it starts with line number 2 in the .fa files and appends them to the text file
        # If the code runs successfully it will breakout of the loop at line 51 else it will prompt the user thrice before existing.
        echo "First 10 of sequence file are being appended. Please wait!..."
        for assembly_file in "$file_path/"*.fa
        do
        # To get the first 10 lines of fasta files and pasting them to data_summary.txt
            {
                echo "Number of lines $(wc -l "$assembly_file")"
                sed -n '2,11p' "$assembly_file"
                echo ""
            } >> data_summary.txt
        done
        echo "Process is Complete!"
        break
    else
        echo "Input error!"
    fi
done
