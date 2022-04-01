commande pour créé la vue :

Create view PhotoMoyennes as( Select refPhoto , avg(note) as noteMoyenne from Noter group by refPhoto);

requète : 
                             
Select refPhoto, noteMoyenne from PhotoMoyennes where noteMoyenne = (Select max(noteMoyenne) from PhotoMoyennes);

