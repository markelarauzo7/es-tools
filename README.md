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
ansible-playbook -i tests/hosts -l test -e task=create_index -e index=prueba -e mapping_file=example-mapping.json tests/test.yml
```

Delete index

```
ansible-playbook -i tests/hosts -l test -e task=delete_index -e index=prueba tests/test.yml
```

List index

```
ansible-playbook -i tests/hosts -l test -e task=list_index tests/test.yml
```

Add alias

```
ansible-playbook -i tests/hosts -l test -e task=add_alias -e index=prueba -e alias=test tests/test.yml
```

Remove alias

```
ansible-playbook -i tests/hosts -l test -e task=remove_alias -e index=prueba -e alias=test tests/test.yml
```

Move alias

```
ansible-playbook -i tests/hosts -l test -e task=move_alias -e source_index=prueba -e dest_index=main-com -e alias=main-mapping-pruebas tests/test.yml
```

Reindex index

```
ansible-playbook -i tests/hosts -l test -e task=reindex_index -e source_index=main-com -e dest_index=prueba tests/test.yml
```

Recreate index

```
ansible-playbook -i tests/hosts -l test -e task=recreate_index -e alias=main-com tests/test.yml
```

Create repository

```
ansible-playbook -i tests/hosts -l test -e task=create_repository -e repository=repository -e location=location tests/test.yml
```

List repository

```
ansible-playbook -i tests/hosts -l test -e task=list_repository tests/test.yml
```

Create snapshot

```
ansible-playbook -i tests/hosts -l test -e task=create_snapshot -e repository=repository -e snapshot=snapshot tests/test.yml
```

List snapshot

```
ansible-playbook -i tests/hosts -l test -e task=list_snapshot -e repository=repository tests/test.yml
```

Delete snapshot

```
ansible-playbook -i tests/hosts -l test -e task=delete_snapshot -e repository=repository -e snapshot=snapshot tests/test.yml
```

Restore snapshot

```
ansible-playbook -i tests/hosts -l test -e task=restore_snapshot -e repository=repository -e snapshot=snapshot tests/test.yml
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
my-playbook.yml:

- hosts: all
  roles:
    - es-tools

ansible-playbook -i hosts -l test -e task=create_index -e index=prueba -e mapping_file=main-mapping.json my-playbook.yml

```

Install

```
ansible-galaxy install git+https://github.com/markelarauzo7/es-tools --roles-path roles
```