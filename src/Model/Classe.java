package Model;

public class Classe {
    private int ID_Classe;
    private int ID_Ecole;
    private int ID_Niveau;
    private int ID_AnneeScolaire;
    public Classe() {
    }

    public Classe(int ID_Classe, int ID_Ecole, int ID_Niveau, int ID_AnneeScolaire) {
        this.ID_Classe = ID_Classe;
        this.ID_Ecole = ID_Ecole;
        this.ID_Niveau = ID_Niveau;
        this.ID_AnneeScolaire = ID_AnneeScolaire;
    }

    //**********************GETTER & SETTER**************************
    public int getID_Classe() {
        return ID_Classe;
    }
    public void setID_Classe(int ID_Classe) {
        this.ID_Classe = ID_Classe;
    }
    public int getID_Ecole() {
        return ID_Ecole;
    }
    public void setID_Ecole(int ID_Ecole) {
        this.ID_Ecole = ID_Ecole;
    }
    public int getID_Niveau() {
        return ID_Niveau;
    }
    public void setID_Niveau(int ID_Niveau) {
        this.ID_Niveau = ID_Niveau;
    }
    public int getID_AnneeScolaire() {
        return ID_AnneeScolaire;
    }
    public void setID_AnneeScolaire(int ID_AnneeScolaire) {
        this.ID_AnneeScolaire = ID_AnneeScolaire;
    }
}
