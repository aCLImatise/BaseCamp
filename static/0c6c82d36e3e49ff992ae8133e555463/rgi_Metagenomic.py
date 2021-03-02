from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rgi_Metagenomic_V0_1_0 = CommandToolBuilder(tool="rgi_Metagenomic", base_command=["rgi", "Metagenomic"], inputs=[ToolInput(tag="in_load", input_type=String(), position=0, doc=InputDocumentation(doc="Loads CARD database, annotations and k-mer database")), ToolInput(tag="in_clean", input_type=String(), position=1, doc=InputDocumentation(doc="Removes BLAST databases and temporary files")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc="Galaxy project wrapper")), ToolInput(tag="in_main", input_type=String(), position=0, doc=InputDocumentation(doc="Runs rgi application")), ToolInput(tag="in_tab", input_type=String(), position=1, doc=InputDocumentation(doc="Creates a Tab-delimited from rgi results")), ToolInput(tag="in_parser", input_type=String(), position=2, doc=InputDocumentation(doc="Creates categorical JSON files RGI wheel visualization")), ToolInput(tag="in_heat_map", input_type=String(), position=3, doc=InputDocumentation(doc="Heatmap for multiple analysis")), ToolInput(tag="in_bwt", input_type=String(), position=0, doc=InputDocumentation(doc="Align reads to CARD and in silico predicted allelic variants (beta)")), ToolInput(tag="in_tm", input_type=String(), position=0, doc=InputDocumentation(doc="Baits Melting Temperature")), ToolInput(tag="in_card_annotation", input_type=String(), position=0, doc=InputDocumentation(doc="Create fasta files with annotations from card.json")), ToolInput(tag="in_wildcard_annotation", input_type=String(), position=1, doc=InputDocumentation(doc="Create fasta files with annotations from variants")), ToolInput(tag="in_baits_annotation", input_type=String(), position=2, doc=InputDocumentation(doc="Create fasta files with annotations from baits (experimental)")), ToolInput(tag="in_remove_duplicates", input_type=String(), position=3, doc=InputDocumentation(doc="Removes duplicate sequences (experimental)")), ToolInput(tag="in_km_er_build", input_type=String(), position=0, doc=InputDocumentation(doc="Build AMR specific k-mers database used for pathogen of origin (beta)")), ToolInput(tag="in_km_er_query", input_type=String(), position=1, doc=InputDocumentation(doc="Query sequences against AMR k-mers database to predict pathogen of origin (beta)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Metagenomic_V0_1_0().translate("wdl", allow_empty_container=True)

