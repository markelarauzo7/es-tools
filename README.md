ansible-playbook -i hosts -l test -e task=create_index -e index=prueba es_tools.yml

Create index

ansible-playbook -i hosts -l test -e task=create_index -e index=prueba -e mapping_file=main-mapping.json es_tools.yml

Delete index

ansible-playbook -i hosts -l test -e task=delete_index -e index=prueba es_tools.yml