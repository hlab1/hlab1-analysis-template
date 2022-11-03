# hlab1-analysis-template
Analysis project template

# Creating a new project
- Working on NYU HPC Greene November 2022
- replace <project_name> with name of project (no space) and <username> with username
```
cd $HOME/projects
git clone https://github.com/hlab1/hlab1-analysis-template.git <project_name>
cd <project_name>
sh init_scratch_dirs.sh /scratch/<username>/projects/<project_name>
```
- Check the direstories and symlinks
```
cd $HOME/projects/<project_name>
ls -l 
```

# Starting a new R analysis 
0. Skip this if you have set up renv
```
cd $SCRATCH
mkdir renv
```
1. This assumed you have set up renv 

  a. Make a copy of the directory `src/Rmd/my_first_analysis` with a meaningful name (here I used `my_real_analysis`)
```
cd $HOME/projects/<project_name>/src/Rmd
cp -R my_first_analysis my_real_analysis
```
  b. Edit the paths in `my_real_analysis/.Renviron'

   c.i. Copy the `my_first_analysis_2022-11-03.Rmd` file to `my_real_analysis_2022-11-04.Rmd' (note the diretory name and the first part of file name must be the same)
```
cd my_real_analysis
cp my_first_analysis_2022-11-03.Rmd my_real_analysis_2022-11-04.Rmd'
```
  c.ii. Change the `this_analysis_path` and `this_rmd_name` variables
  
  d. can now make a new RStudio project to the `my_real_analysis` directory. In RStudio
```
renv::paths$root()
renv::paths$cache()
renv::paths$library()
renv::init(".")
```

e. knitting this file to HTML creates graphics in `/scratch/$USER/projects/<project_name>/results/my_real_analysis`

f. can add new Rmd files by changing the dates


# References
- Noble 2009 A quick guide for organizing computational biology projects
- [A Quick Guide to Organizing [Data Science] Projects (updated for 2018)](https://medium.com/outlier-bio-blog/a-quick-guide-to-organizing-data-science-projects-updated-for-2016-4cbb1e6dac71); [outlierbio/ob-project-template](https://github.com/outlierbio/ob-project-template)

