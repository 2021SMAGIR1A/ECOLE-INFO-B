-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 nov. 2021 à 17:53
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_ecoleinfo`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` bigint(20) NOT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id` bigint(20) NOT NULL,
  `administrateur_id` bigint(20) DEFAULT NULL,
  `classe_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `annonce_etudiant`
--

CREATE TABLE `annonce_etudiant` (
  `annonce_id` bigint(20) NOT NULL,
  `etudiant_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` bigint(20) NOT NULL,
  `annee_scolaire` varchar(255) DEFAULT NULL,
  `libelle_classe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classe_enseignant`
--

CREATE TABLE `classe_enseignant` (
  `enseignant_id` bigint(20) NOT NULL,
  `classe_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_admin`
--

CREATE TABLE `ecole_info_seq_admin` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_admin`
--

INSERT INTO `ecole_info_seq_admin` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_annonce`
--

CREATE TABLE `ecole_info_seq_annonce` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_annonce`
--

INSERT INTO `ecole_info_seq_annonce` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_cours`
--

CREATE TABLE `ecole_info_seq_cours` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_cours`
--

INSERT INTO `ecole_info_seq_cours` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_etudiant`
--

CREATE TABLE `ecole_info_seq_etudiant` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_etudiant`
--

INSERT INTO `ecole_info_seq_etudiant` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_note`
--

CREATE TABLE `ecole_info_seq_note` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_note`
--

INSERT INTO `ecole_info_seq_note` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_reclamation`
--

CREATE TABLE `ecole_info_seq_reclamation` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_reclamation`
--

INSERT INTO `ecole_info_seq_reclamation` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_role`
--

CREATE TABLE `ecole_info_seq_role` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_role`
--

INSERT INTO `ecole_info_seq_role` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_type_utilisateur`
--

CREATE TABLE `ecole_info_seq_type_utilisateur` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_type_utilisateur`
--

INSERT INTO `ecole_info_seq_type_utilisateur` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ecole_info_seq_utilisateur`
--

CREATE TABLE `ecole_info_seq_utilisateur` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole_info_seq_utilisateur`
--

INSERT INTO `ecole_info_seq_utilisateur` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `libelle_mat_enseigner` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant_cours`
--

CREATE TABLE `enseignant_cours` (
  `cours_id` bigint(20) NOT NULL,
  `enseignant_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` bigint(20) NOT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_classe`
--

CREATE TABLE `etudiant_classe` (
  `classe_id` bigint(20) NOT NULL,
  `etudiant_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `cour_id` bigint(20) DEFAULT NULL,
  `enseignant_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `etudiant_id` bigint(20) DEFAULT NULL,
  `note_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typeutilisateur`
--

CREATE TABLE `typeutilisateur` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` bigint(20) NOT NULL,
  `account_expired` bit(1) DEFAULT NULL,
  `account_locked` bit(1) DEFAULT NULL,
  `credentials_expired` bit(1) DEFAULT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `est_planifie` int(11) NOT NULL,
  `first_connect` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type_utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_role`
--

CREATE TABLE `utilisateur_role` (
  `utilisateur_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKap8vk068oh8c0qxcjbdsoewd0` (`utilisateur_id`);

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2826ct3lrlp6g7e5tca2hjis4` (`administrateur_id`),
  ADD KEY `FKhh4dxpl3eab4ij0w8sabwk511` (`classe_id`);

--
-- Index pour la table `annonce_etudiant`
--
ALTER TABLE `annonce_etudiant`
  ADD KEY `FK2akdgujqi8a0i2325hu9v577r` (`etudiant_id`),
  ADD KEY `FK33rmwiuaaniadrorcoo0hmyij` (`annonce_id`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classe_enseignant`
--
ALTER TABLE `classe_enseignant`
  ADD KEY `FK1k4ixry8vrncg9msivquk5qkv` (`classe_id`),
  ADD KEY `FKm5obm951upidv0kwh0okhkpf4` (`enseignant_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtow190o3rq4pjniqv1lef49rr` (`utilisateur_id`);

--
-- Index pour la table `enseignant_cours`
--
ALTER TABLE `enseignant_cours`
  ADD KEY `FK4i3ubyyl4kla67crl1e8p1dol` (`enseignant_id`),
  ADD KEY `FKtfabh09tey8vxi1s8g9r8htt5` (`cours_id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk1k5fhsjak7v0uk031i5geqj9` (`utilisateur_id`);

--
-- Index pour la table `etudiant_classe`
--
ALTER TABLE `etudiant_classe`
  ADD KEY `FKfxb8nsorbtqnmgyyr2j8qd4jo` (`etudiant_id`),
  ADD KEY `FKmyt43ntsvov52k3y2jh2qeinb` (`classe_id`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9oa1v398clw5x96cb7vaageim` (`cour_id`),
  ADD KEY `FKe8r5b4tmdq28c7h6otl5s3klx` (`enseignant_id`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4dwst2ceow4u1vhcifkag6029` (`etudiant_id`),
  ADD KEY `FK8meun0krmck3s2bcjsy8wufx0` (`note_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeutilisateur`
--
ALTER TABLE `typeutilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_kq7nt5wyq9v9lpcpgxag2f24a` (`username`),
  ADD KEY `FKkt7qulf37ulve4w5n1leg0mtm` (`type_utilisateur_id`);

--
-- Index pour la table `utilisateur_role`
--
ALTER TABLE `utilisateur_role`
  ADD KEY `FKad9wf1u7gjbx2p2y9hs8ow39x` (`role_id`),
  ADD KEY `FK6kifvrsfkpqn502r5ipjl5pvu` (`utilisateur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
