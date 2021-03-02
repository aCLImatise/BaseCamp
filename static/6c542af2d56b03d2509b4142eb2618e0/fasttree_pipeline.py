from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasttree_Pipeline_V0_1_0 = CommandToolBuilder(tool="fasttree_pipeline", base_command=["fasttree_pipeline"], inputs=[ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="BLAST database to retrieve sequences from, required for text or csv files")), ToolInput(tag="in_frequency", input_type=Boolean(optional=True), prefix="--frequency", doc=InputDocumentation(doc="OPTIONAL, frequency of gaps allowed per residue, default is 0.25")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="-csv", doc=InputDocumentation(doc="OPTIONAL, CSV of ortholog results, the first column must be query accessions with the heading Accession, remaining columns must be the results with one column per organism, the first row should be organism names")), ToolInput(tag="in_optional_model_wag", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="OPTIONAL, model for phylogenetic analysis (choice of lg or wag for protein or gtr for nucleotide), default if not supplied is JTT for protein and JC for nucleotide"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasttree_Pipeline_V0_1_0().translate("wdl")

