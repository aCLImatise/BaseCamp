from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dna_Mutation_Organism_V0_1_0 = CommandToolBuilder(tool="dna_mutation_organism", base_command=["dna_mutation", "organism"], inputs=[ToolInput(tag="in_dna_mutation", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blastn", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mutation", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dna_Mutation_Organism_V0_1_0().translate("wdl")

