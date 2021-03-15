from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dna_Mutation_Blastn_Mutation_V0_1_0 = CommandToolBuilder(tool="dna_mutation_blastn_mutation", base_command=["dna_mutation", "blastn", "mutation"], inputs=[ToolInput(tag="in_organism", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dna_Mutation_Blastn_Mutation_V0_1_0().translate("wdl")

