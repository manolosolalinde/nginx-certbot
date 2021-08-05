#!/bin/bash
cp ./data/app.example.conf ./data/nginx/app.conf
sed -i "s/example.org/${MYDOMAIN}/" ./data/nginx/app.conf

# #!/bin/bash
# firstString="I love Suzi and Marry"
# secondString="Sara"
# echo "${firstString/Suzi/$secondString}"    
# # prints 'I love Sara and Marry