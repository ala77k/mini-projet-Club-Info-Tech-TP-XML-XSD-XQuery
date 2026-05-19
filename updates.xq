(: UPDATE 1 — Insertion :)
insert node
  <membre id="M012" categorieRef="C2">
    <nom>Ferhat</nom>
    <prenom>Imane</prenom>
    <email>i.ferhat@club.dz</email>
  </membre>
into doc("club.xml")//membres

(: UPDATE 2 — Modification du coefficient de CO2 :)
replace value of node
  doc("club.xml")//concours[@id = "CO2"]/@coefficient
with "2.0"

(: UPDATE 3 — Suppression du participant M007 dans CO3 :)
delete node
  doc("club.xml")//concours[@id = "CO3"]
    //participant[@membreRef = "M007"]
