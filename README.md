## Understanding the Molecular Interface of Cardiovascular Disease and COVID-19: A Data Science Approach

### Introduction: 

In this study, we create a text mining pipeline to better understand associations of CVDs with COVID-19. First, we identify a data corpora of biomedical publications containing COVID-19 symptoms as defined by CDC. Using 333 human COVID-19-interacting proteins as entities and 8 CVDs classified by MeSH as categories, we examine and compute their Context Aware Semantic Analytic Processing (CaseOLAP) scores. Among the COVID-19 subproteome, we identify a subset of proteins with no missing values, and implement machine learning methods to explore the molecular interface of the COVID-19 subproteome and CVDs. 

Following are the data sources included in the project:

### PubMed: 
The United States’ National Library of Medicine maintains PubMed, a search engine indexing over 33,000,000 biomedical publications (https://pubmed.ncbi.nlm.nih.gov). Of those publications, we extracted 1,075,200 relevant to cardiovascular disease and  80,732 relevant to Covid-19.  These publications are tagged with medical subject heading (MeSH) descriptors as well as the body text of abstract mention relevant biomedical entities (determined to be relevant via integration with data from the CDC, MeSH, and ICD), as well as biomedical entities (e.g., proteins, drugs, pathways). 
 
### CDC Data:
The Center for Disease Control (CDC) website (https://www.cdc.gov/) was our source for Covid-19 signs and symptoms as well as Covid-19 comorbidities. These signs and symptoms are searched over indexing of  PubMed data and analyzed for interaction within symptoms and across symptoms and comorbidities.

### ICD Codes: 
International Classification of Disease (ICD) codes [https://icd.who.int/en] are globally-used standards created by the World Health Organization for recording symptoms, diseases, and injuries. For cardiovascular diseases, there are over 1,800 codes. These codes for disease signs and symptoms as well as comorbidities are obtained through UMLS API. 

### MeSH: 
Medical Subject Headings (MeSH) (https://meshb.nlm.nih.gov/search) are hierarchically-organized codes created by the National Library of Medicine,  standards for referring to medical entities in categories such as "Diseases". There are 24 cardiovascular disease categories with over 600 total MeSH descriptors. In one of our computations, we implemente the MeSH based document collection for eight CVDs to construct the Text-Cube. 
		

## UMLS: 
Unified Medical Language (UMLS) (https://www.nlm.nih.gov/research/umls/index.html) provides an interface for standardizing the medical terminology (e.g., disease signs and symptoms, drugs) which is integrated with diverse widely used terminologies (e.g., MeSH, ICD codes, RxNorm, SnomedCT). We use UMLS for concept normalization through name, synonyms, abbreviations of the biomedical concepts in signs and symptoms, and comorbidities.


### UniProt Data:
UniProt terms populated the list of 333 Covid-19 related proteins. Proteins were determined to be Covid-19 relevant based on literature/other documents. A UniProt API (https://www.uniprot.org/) obtained the proteins’ UniProt IDs, names, synonyms, and abbreviations. The CaseOLAP score for entity-category association was calculated using the proteins (entities) and the 8 cardiovascular diseases (categories). Those scores were 8 dimensional vectors with each element identifying one CD category.  Starting with the score of Covid-19 proteins we build up the score of highlighted pathways those proteins are involved in.  These scoring also facilitated the knowledge graph construction. 

 
### Reactome Data: 
We conduct the Pathways search for two sets of proteins through Reactome web application (https://reactome.org/) in the browser. Starting with two sets of proteins, we prepare the two sets of associated pathways lists. With a unique ID of each pathway, we isolated the pathways for construction of the knowledge graph. The intersection of Covid-19 proteins and CVD drug target proteins provides a very insightful subgraph in the knowledge graph with highlighted molecular mechanisms associated with CVD and Covid-19.



