package Model;

public class Niveau {
    private int ID_Niveau;
    private int Nom_Niveau;

    public Niveau() {
    }

    public Niveau(int ID_Niveau, int nom_Niveau) {
        this.ID_Niveau = ID_Niveau;
        Nom_Niveau = nom_Niveau;
    }

    //**********************GETTER & SETTER**************************
    public int getID_Niveau() {
        return ID_Niveau;
    }
    public void setID_Niveau(int ID_Niveau) {
        this.ID_Niveau = ID_Niveau;
    }
    public int getNom_Niveau() {
        return Nom_Niveau;
    }
    public void setNom_Niveau(int nom_Niveau) {
        Nom_Niveau = nom_Niveau;
    }
}
