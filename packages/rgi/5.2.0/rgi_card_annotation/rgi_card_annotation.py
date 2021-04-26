from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgi_Card_Annotation_V0_1_0 = CommandToolBuilder(tool="rgi_card_annotation", base_command=["rgi", "card_annotation"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="card.json file")), ToolInput(tag="in_ncbi", input_type=Boolean(optional=True), prefix="--ncbi", doc=InputDocumentation(doc="adds ncbi accession to FASTA headers"))], outputs=[], container="quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Card_Annotation_V0_1_0().translate("wdl")

