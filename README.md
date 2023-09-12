# Exercise e0

This is the first in-class coding exercise. The assignment is in
e0.rkt, which you should edit using Dr. Racket. You should be running
the tests either (a) in Racket (by opening the corresponding test.rkt
file within the appropriate test subdirectory) or, more preferably,
(b) via the command-line.

To run all tests do

```
python3 tester.py -av
```

To recap what this command does:

- It invokes the `python3` interpreter on a file, `tester.py`, which
  is the entrypoint to the autograder's test harness.

- Python then reads and executes this file, which scans for tests as
  subdirectories of the `test/` folder. Any subdirectory of this
  folder will be treated as a test. In particular, if you use the Mac
  OS Finder, it will create hidden `.DS_Store` directories which will
  confuse the tester--these can either be removed or simply
  ignored--they are not real tests.

- The `-av` option says to run *all* the tests with *verbose*
  output. You can check for the answer in the corresponding test's
  `answer` file.

On this exercise, all tests are public, and several of the harder ones
are optional. In the first project, there will be private tests, which
you will not have access to.
