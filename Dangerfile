# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = gitlab.mr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn "MR is classed as Work in Progress" if gitlab.mr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# Don't let testing shortcuts get into master by accident
warn("fdescribe left in tests") if `grep -r fdescribe specs/ `.length > 1
warn("fit left in tests") if `grep -r fit specs/ `.length > 1
