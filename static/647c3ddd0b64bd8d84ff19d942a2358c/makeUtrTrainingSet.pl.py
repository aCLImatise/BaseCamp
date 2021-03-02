from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Makeutrtrainingset_Pl_V0_1_0 = CommandToolBuilder(tool="makeUtrTrainingSet.pl", base_command=["makeUtrTrainingSet.pl"], inputs=[ToolInput(tag="in_only_best", input_type=Int(optional=True), prefix="--onlybest", doc=InputDocumentation(doc="for each stop/start codon only the 3'/5'-UTR from the most frequent splice variant")), ToolInput(tag="in_dist", input_type=Int(optional=True), prefix="--dist", doc=InputDocumentation(doc="consider all alignments that start at most n bp downstream of stop codon/upstream of the start codon (default 0)"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeutrtrainingset_Pl_V0_1_0().translate("wdl")

