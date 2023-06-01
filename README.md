# hs
`hs` (Httpx Sort) is a powerful tool designed to streamline the process of sorting and organizing subdomains based on their HTTP response status codes. It leverages the functionality of the `httpx` tool to retrieve the status codes for a given list of subdomains. The script takes a single argument, which is the path to a text file containing a list of subdomains. Upon execution, `hs` reads the subdomains from the file and uses `httpx` to silently retrieve the HTTP response status codes for each subdomain.

Once the status codes are obtained, `hs` proceeds to categorize the subdomains based on their status codes. It creates a separate file for each unique status code and populates them with the corresponding subdomains. The resulting files are conveniently organized in a sorted directory. The script also outputs a confirmation message, indicating that the sorting process has been completed, along with the directory where the sorted files are stored. This enables users to easily locate and access the sorted subdomains based on their specific status codes.

![carbon](https://github.com/whalebone7/hs/assets/125891350/eec57c11-8620-4540-84a2-42ce790ca682)

# Installation
This tool requires `Httpx` https://github.com/projectdiscovery/httpx

1. git clone this rep && cd hs
2. chmod +x hs.sh 
3. ./hs.sh 

If you want to call the `hs` tool from anywhere in your linux:

1. Create an alias for hs.sh `echo "alias hs='bash /path/to/hs.sh'" >> ~/.bashrc`

1. Reload the bashrc file `source ~/.bashrc`
