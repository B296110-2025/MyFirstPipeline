  558  pwd
  559  cd ${HOME}/MyFirstPipeline/
  560  ls -al
  561  git add script1006.log 
  562  git commit -m 'script added'
  563  history
  564* curl -u B296110-2025  https://github.com/B296110-2025/MyFirstPipeline.git -d '{'name':'MyFirstPipeline'}'curl -u B296110-2025  https://github.com/B296110-2025/MyFirstPipeline.git -d '{'name':'MyFirstPipeline'}'

  565  git push -u origin master
  566  git push -u origin main
  567  cat script1006.log 
  568  cat script1006.log 
  569  pwd
  570  cd ${HOME}
  571  ls -al
  572  mkdir ~/Exercises/Lecture06
  573  cd ~/Exercises/Lecture06
  574  ls -al
  575  pwd
  576  wget https://live.bio.edd.ac.uk/bioinfmsc/nem.fasta
  577  wget https://live.bio.ed.ac.uk/bioinfmsc/nem.fasta
  578  ls -al *.fasta
  579  less nem.fasta
  580  grep -c '>' nem.fasta
  581  cat nem.fasta | awk '{
if(substr($1,1,1)=='>')
{
print 'this is a header line : ' $0;
hilne=FNR ; 
}
if(FNR==hline+!)
{print 'First line is : ' $0;
first_seq=substr($0,1,1)

cat nem.fasta | awk '{
  582  if(substr($1,1,1)=='>')
  583  { print 'this is a header line : ' $0; hilne=FNR ;  }
  584  {print 'First line is : ' $0;
  585  first_seq=substr($0,1,1)
  586  print 'First line is: ' first_seq
  587  cat nem.fasta | awk '{
# Is this line a fasta header (the first character is a ">")

if(substr($1,1,1)==">")
 {
print "this is a header line: " $0; 
hline=FNR ; # FNR is file number record (i.e. which line of the file)
 }
# Identify the first line of the actual sequence

# ...and then the first character of that line

if(FNR==hline+1)
 {
print "First line is:" $0;
first_seq_character=substr($0,1,1)
print "First character is: " first_seq_character
print first_seq_character > "first_seq_character.txt" 
 }
}'
  588  wc -l first_seq_character.txt
  589  sort first_seq_character.txt | uniq -c | sort -k1,1nr
  590  makeblastdb -in nem.fasta -dbtype prot -out nem
  591  ls -lh
  592  wget -O testsequence.fasta "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_015119.1&strand=1&seq_start=1426&seq_stop=2962&rettype=fasta&retmode=text"
  593  wget -O testsequence.fasta "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_015119.1&strand=1&seq_start=1426&seq_stop=2962&rettype=fasta&retmode=text"
  594  weblink="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_015119.1&strand=1&seq_start=1426&seq_stop=2962&rettype=fasta&retmode=text"
  595  echo ${weblink}
  596  wget -O link_testsequence.fasta ${weblink}
  597  save_filename="saved_testsequence.fasta"
  598  wget -O ${saved_filename} ${weblink}
  599  ls -1 *sequence*
  600  du -h *sequence*
  601  history > my_work_script.sh
  602  vim my_work_script.sh 
  603  git add my_work_script.sh 
  604  git commit -m 'work_script1007'
  605  git status
  606  git log
  607  git log --oneline
  608  git checkout HEAD~1
  609  git log --oneline
  610  cp my_work_script.sh ${HOME}/MyFirstPipeline/
  611  ls -al
  612  ls -al my_work_script.sh
  613  history > my_work_script.sh
