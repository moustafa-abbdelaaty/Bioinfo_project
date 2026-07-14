# Genome Analysis Pipeline — Aiptasia (Exaiptasia diaphana) ONT Assembly

An educational/applied project covering a full genome analysis workflow: from raw sequencing reads to annotation and phylogenetics, built while studying the [SequAna course](https://github.com/SequAna-Ukon/SequAna_course) (BIO-16840) under the supervision of Dr. Abdoallah Sharaf.

## Project Goal
Analysis of Oxford Nanopore Technologies (ONT) sequencing data from a symbionts-free strain of Aiptasia sp. (scientific name: *Exaiptasia diaphana*), strain F003. The goal is to learn and recapitulate the key steps of a complete genome analysis: from QC of raw reads, through assembly and annotation, to phylogenetic analysis — as preparation for a real research project.

**Scientific context:** Aiptasia is a model organism widely used to study the symbiotic relationship between invertebrate hosts (Cnidaria) and microalgae from the family Symbiodiniaceae — the same type of relationship found in coral reefs — making it important for microbiome and environmental adaptation studies.

## Dataset
- **Organism:** Aiptasia sp. [*Exaiptasia diaphana*], strain F003 (symbionts-free)
- **Sequencing type:** Oxford Nanopore long-read sequencing (ONT)
- **Source:** Data previously generated in SequAna's Lab
- **Reference for comparison:** The available reference genome for this species was generated using short-read technology for a different strain (CC) — [Baumgarten et al. 2015](https://www.pnas.org/doi/full/10.1073/pnas.1513318112)

## Analysis Pipeline
| # | Step | Tool | Folder |
|---|------|------|--------|
| 1 | Quality Control | FastQC | `scripts/qc/` |
| 2 | Genome Assembly | [tool name] | `scripts/assembly/` |
| 3 | Annotation | Funannotate | `scripts/annotation/` |
| 4 | Phylogenetics | [tool name] | `scripts/phylogenetics/` |

## How to Reproduce This Project

### 1. Recreate the working environment (Conda)
```bash
conda env create -f envs/environment.yml
conda activate bioinfo-project
```

### 2. Run the steps in order
```bash
bash scripts/qc/run_fastqc.sh
bash scripts/assembly/run_assembly.sh
# ... etc
```

## Results
[After completing each stage, add a short summary + link to key figures/tables, e.g.:]
- **QC:** Average read quality Q[..], [any relevant note]
- **Assembly:** N50 = [..], number of contigs = [..]
- **Annotation:** Number of predicted genes = [..]

## Progress Log
See [`docs/logs/`](docs/logs/) for detailed weekly notes on each step and the reasoning behind it.

## References
- [SequAna Course](https://github.com/SequAna-Ukon/SequAna_course)
- [Wang et al. (2021)](https://www.nature.com/articles/s41587-021-01108-x)
- [Boughattas et al. (2021)](https://onlinelibrary.wiley.com/doi/10.1002/ece3.8447)
- [Willem et al. (2022)](https://onlinelibrary.wiley.com/doi/10.1111/tpj.15690)
- [Safar et al. (2023)](https://bmcbiotechnol.biomedcentral.com/articles/10.1186/s12896-023-00797-3)
- [Fleck et al. (2024)](https://www.nature.com/articles/s42003-023-05748-4)
- [Baumgarten et al. (2015) - Reference genome](https://www.pnas.org/doi/full/10.1073/pnas.1513318112)

