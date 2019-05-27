package Model;

public class Ecole {
    private String Nom_Ecole;
    private int Annee_Fondatation;

    public Ecole() {
    }

    public Ecole(String nom_Ecole, int annee_Fondatation) {
        Nom_Ecole = nom_Ecole;
        Annee_Fondatation = annee_Fondatation;
    }

    //**********************GETTER & SETTER**************************
    public String getNom_Ecole() {
        return Nom_Ecole;
    }
    public void setNom_Ecole(String nom_Ecole) {
        Nom_Ecole = nom_Ecole;
    }
    public int getAnnee_Fondatation() {
        return Annee_Fondatation;
    }
    public void setAnnee_Fondatation(int annee_Fondatation) {
        Annee_Fondatation = annee_Fondatation;
    }
}
