#!/bin/bash 

for codefile in code/*.rb
do
    specfile=`basename ${codefile} .rb`_spec.rb
    echo $specfile
    echo $codefile
    rspec --color ${codefile} sanity_specs/${specfile}
done
