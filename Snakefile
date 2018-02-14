import os

# shortcuts
pj = os.path.join

# directories
data = config.get('data', 'data')
out = config.get('out', 'out')

# data files
table = pj(data, 'table.tsv')

# output files
out = pj(out, 'out.txt')

rule all:
  input: out

rule:
  input: table
  output: out
  shell: 'awk \'{{print $1}}\' {input} | sort | uniq > {output}'
