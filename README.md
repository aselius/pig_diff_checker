This is a simple utility repo containing the simple check script to confirm that the output of the pig script for assignment 2 using the sample dataset matches the expected output provided.

The relevant test script can be found in `pig/test.sh`

Currently the results are simply compared to the expected output using diff after sort. However the plan is to make this a little more granular using sdiff and comparing the mismatches side by side with `expected` and `output` syntax. This can be rather easily done using awk and sed and iterating through every list. This should probably be only output if a verbose argument -v is provided. A match percentage can also be provided for the students' convenience.

Instructions on setup
1. Unzip the hw2.zip into a local directory of choice
2. Use the lab environment provided as a Docker image and navigate to the local directory that is mounted as a volume to the Docker container.
3. Fill out the pig ETL script in etl.pig
4. To test the results, sun `sudo pig -x local etl.pig` in the pig directory where the etl.pig file is.
5. The directories holding the results of the ETL job should have been produced in the same directoy
6. Run the test script with `bash test.sh` or whatever flavor of shell.
