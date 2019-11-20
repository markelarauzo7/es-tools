Create index

ansible-playbook -i hosts -l test -e task=create_index -e index=prueba -e mapping_file=main-mapping.json es_tools.yml

Delete index

ansible-playbook -i hosts -l test -e task=delete_index -e index=prueba es_tools.yml

List index

ansible-playbook -i hosts -l test -e task=list_index es_tools.yml

Add alias

ansible-playbook -i hosts -l test -e task=add_alias -e index=prueba -e alias=test es_tools.yml

Remove alias

ansible-playbook -i hosts -l test -e task=remove_alias -e index=prueba -e alias=test es_tools.yml

Move alias

ansible-playbook -i hosts -l test -e task=move_alias -e source_index=prueba -e dest_index=main-com -e alias=main-mapping-pruebas es_tools.yml

Create a ansible.cfg for pretty printing with:

```
    [defaults]
    # Use the YAML callback plugin.
    stdout_callback=yaml
    # Use the stdout_callback when running ad-hoc commands.
    bin_ansible_callbacks=True
```