Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).


Create index

```
ansible-playbook -i hosts -l test -e task=create_index -e index=prueba -e mapping_file=files/main-mapping.json es-tools.yml
```

Delete index

```
ansible-playbook -i hosts -l test -e task=delete_index -e index=prueba es-tools.yml
```

List index

```
ansible-playbook -i hosts -l test -e task=list_index es-tools.yml
```

Add alias

```
ansible-playbook -i hosts -l test -e task=add_alias -e index=prueba -e alias=test es-tools.yml
```

Remove alias

```
ansible-playbook -i hosts -l test -e task=remove_alias -e index=prueba -e alias=test es-tools.yml
```

Move alias

```
ansible-playbook -i hosts -l test -e task=move_alias -e source_index=prueba -e dest_index=main-com -e alias=main-mapping-pruebas es-tools.yml
```
Create a ansible.cfg for pretty printing with:

```
    [defaults]
    # Use the YAML callback plugin.
    stdout_callback=yaml
    # Use the stdout_callback when running ad-hoc commands.
    bin_ansible_callbacks=True
```

Example playbook

```
my-playbook.yaml:

- hosts: all
  roles:
    - es_tools

ansible-playbook -i hosts -l test -e task=create_index -e index=prueba -e mapping_file=files/main-mapping.json my-playbook.yml

```