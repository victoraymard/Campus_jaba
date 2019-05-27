package Model;

public class Effectif {
    private int ID_Effectif;
    private int ID_Classe;
    private int ID_Eleve;
    public Effectif() {
    }

    public Effectif(int ID_Effectif, int ID_Classe, int ID_Eleve) {
        this.ID_Effectif = ID_Effectif;
        this.ID_Classe = ID_Classe;
        this.ID_Eleve = ID_Eleve;
    }

    //**********************GETTER & SETTER**************************
    public int getID_Effectif() {
        return ID_Effectif;
    }
    public void setID_Effectif(int ID_Effectif) {
        this.ID_Effectif = ID_Effectif;
    }
    public int getID_Classe() {
        return ID_Classe;
    }
    public void setID_Classe(int ID_Classe) {
        this.ID_Classe = ID_Classe;
    }
    public int getID_Eleve() {
        return ID_Eleve;
    }
    public void setID_Eleve(int ID_Eleve) {
        this.ID_Eleve = ID_Eleve;
    }
}
