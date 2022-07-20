-- phpMyAdmin SQL Dump
-- version 5.0.4

--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 juin 2022 à 11:43
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sirh`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `assigner`
--

CREATE TABLE `assigner` (
  `idEmploye` int(11) NOT NULL,
  `idProjet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `charge`
--

CREATE TABLE `charge` (
  `idCharge` int(11) NOT NULL,
  `nomCharge` varchar(50) NOT NULL,
  `tauxCharge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `compétences`
--

CREATE TABLE `compétences` (
  `idCompétences` int(11) NOT NULL,
  `typeCompétence` varchar(50) NOT NULL,
  `NiveauCompétence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `conge`
--

CREATE TABLE `conge` (
  `referenceConge` int(11) NOT NULL,
  `idTypeConge` varchar(50) NOT NULL,
  `DateDebutC` date NOT NULL,
  `DateFinConge` date NOT NULL,
  `idEmploye` int(11) NOT NULL,
  `StatutConge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `constituer`
--

CREATE TABLE `constituer` (
  `idFP` int(11) NOT NULL,
  `idCharge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `idDepartement` int(11) NOT NULL,
  `nomDepartement` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `CodeDroit` int(11) NOT NULL,
  `LibelleDroit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `idEmploye` int(11) NOT NULL,
  `CINEmp` varchar(50) NOT NULL,
  `Sexemp` varchar(25) NOT NULL,
  `StatutMatrimonial` varchar(50) NOT NULL,
  `NombreEnfant` int(11) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Nationalite` varchar(50) DEFAULT NULL,
  `DateEntree` date DEFAULT NULL,
  `DateSortie` date DEFAULT NULL,
  `UrlPhoto` varchar(50) DEFAULT NULL,
  `DateNaissance` varchar(50) DEFAULT NULL,
  `urlCV` varchar(50) DEFAULT NULL,
  `NumCompteBanque` varchar(50) DEFAULT NULL,
  `NomBanque` varchar(50) DEFAULT NULL,
  `idDepartement` int(50) DEFAULT NULL,
  `idPoste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fichedepaie`
--

CREATE TABLE `fichedepaie` (
  `idFP` int(11) NOT NULL,
  `idEmploye` int(11) NOT NULL,
  `salaireBrut` float NOT NULL,
  `heureSup` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

CREATE TABLE `poste` (
  `idPoste` int(11) NOT NULL,
  `Fonction` varchar(50) NOT NULL,
  `CoutsHeureSupplementaire` varchar(50) NOT NULL,
  `StatutPoste` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `idProjet` int(11) NOT NULL,
  `NomProjet` int(11) NOT NULL,
  `DateDebut` date NOT NULL,
  `DateFin` date NOT NULL,
  `idChefDeProjet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `idTache` int(11) NOT NULL,
  `nomDeTache` varchar(50) NOT NULL,
  `TypeDeTache` varchar(50) NOT NULL,
  `idProjet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `typeconge`
--

CREATE TABLE `typeconge` (
  `idTypeConge` int(11) NOT NULL,
  `LibelleTypeConge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utillisateur`
--

CREATE TABLE `utillisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Index pour la table `assigner`
--
ALTER TABLE `assigner`
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Index pour la table `charge`
--
ALTER TABLE `charge`
  ADD PRIMARY KEY (`idCharge`);

--
-- Index pour la table `compétences`
--
ALTER TABLE `compétences`
  ADD PRIMARY KEY (`idCompétences`);

--
-- Index pour la table `conge`
--
ALTER TABLE `conge`
  ADD PRIMARY KEY (`referenceConge`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Index pour la table `constituer`
--
ALTER TABLE `constituer`
  ADD KEY `idFP` (`idFP`),
  ADD KEY `idCharge` (`idCharge`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`idDepartement`);

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`CodeDroit`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD KEY `idEmploye` (`idEmploye`),
  ADD KEY `idDepartement` (`idDepartement`),
  ADD KEY `idPoste` (`idPoste`);

--
-- Index pour la table `fichedepaie`
--
ALTER TABLE `fichedepaie`
  ADD PRIMARY KEY (`idFP`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Index pour la table `poste`
--
ALTER TABLE `poste`
  ADD PRIMARY KEY (`idPoste`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`idProjet`),
  ADD KEY `idChefDeProjet` (`idChefDeProjet`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`idTache`),
  ADD KEY `idProjet` (`idProjet`);

--
-- Index pour la table `typeconge`
--
ALTER TABLE `typeconge`
  ADD PRIMARY KEY (`idTypeConge`);

--
-- Index pour la table `utillisateur`
--
ALTER TABLE `utillisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `charge`
--
ALTER TABLE `charge`
  MODIFY `idCharge` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compétences`
--
ALTER TABLE `compétences`
  MODIFY `idCompétences` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `idDepartement` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `droit`
--
ALTER TABLE `droit`
  MODIFY `CodeDroit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fichedepaie`
--
ALTER TABLE `fichedepaie`
  MODIFY `idFP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `poste`
--
ALTER TABLE `poste`
  MODIFY `idPoste` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `idProjet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tache`
--
ALTER TABLE `tache`
  MODIFY `idTache` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `typeconge`
--
ALTER TABLE `typeconge`
  MODIFY `idTypeConge` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utillisateur`
--
ALTER TABLE `utillisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `utillisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `assigner`
--
ALTER TABLE `assigner`
  ADD CONSTRAINT `assigner_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`);

--
-- Contraintes pour la table `conge`
--
ALTER TABLE `conge`
  ADD CONSTRAINT `conge_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`);

--
-- Contraintes pour la table `constituer`
--
ALTER TABLE `constituer`
  ADD CONSTRAINT `constituer_ibfk_1` FOREIGN KEY (`idFP`) REFERENCES `fichedepaie` (`idFP`),
  ADD CONSTRAINT `constituer_ibfk_2` FOREIGN KEY (`idCharge`) REFERENCES `charge` (`idCharge`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `utillisateur` (`idUtilisateur`),
  ADD CONSTRAINT `employe_ibfk_2` FOREIGN KEY (`idDepartement`) REFERENCES `departement` (`idDepartement`),
  ADD CONSTRAINT `employe_ibfk_3` FOREIGN KEY (`idPoste`) REFERENCES `poste` (`idPoste`);

--
-- Contraintes pour la table `fichedepaie`
--
ALTER TABLE `fichedepaie`
  ADD CONSTRAINT `fichedepaie_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`idChefDeProjet`) REFERENCES `utillisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `tache`
--
ALTER TABLE `tache`
  ADD CONSTRAINT `tache_ibfk_1` FOREIGN KEY (`idProjet`) REFERENCES `projet` (`idProjet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
