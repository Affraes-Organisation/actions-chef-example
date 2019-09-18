name "chef-actions"
default_source :supermarket
run_list "chef-actions::default"
cookbook "chef-actions", path: "."
