COSC 480 Homework 1
===================

Skeleton code and sanity specs for COSC480 homework 1. 
Refer to Moodle for the homework description.

Skeleton Code
=============

The skeleton code for parts 1-7 are located in the folder ``code/``.

Running Sanity Specs (Tests)
============================

To run the sanity specs/tests, please make sure ``rspec`` is installed (it is 
already installed in the virtual machine, but if you're using an 
unsanctioned environment, you can run ``gem install rspec``).  

The sanity specs *only* check that the various methods that you need to
implement conform to the required interface (i.e., they return the
expected objects, etc.)  The specs *do not* do any testing beyond
that.

The script ``./run_specs.sh`` can be used to run all specs against all your code.

If you want to run one spec at a time:

  * If you have your solution saved to a file located at ``path/to/solution.rb``, and
  * the corresponding spec is located at ``other_path/to/sanity_spec.rb``, 
  * then you can run the sanity spec with:

        rspec --color path/to/solution.rb other_path/to/sanity_spec.rb

    The output should look something like:

        ...

        Finished in 0.00206 seconds
        3 examples, 0 failures
