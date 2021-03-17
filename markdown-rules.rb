# https://github.com/markdownlint/markdownlint/blob/master/docs/creating_styles.md#parameters
# https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

all

# Customized rule parameters
rule 'MD002', :level => 3 # First header should be a top level header
rule 'MD041', :level => 3 # First line in file should be a top level header

# Exclude rules
exclude_rule 'MD013' # Line length
exclude_rule 'MD033' # Inline HTML
