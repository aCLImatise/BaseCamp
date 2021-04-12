from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Enrich_V0_1_0 = CommandToolBuilder(tool="enrich", base_command=["enrich"], inputs=[ToolInput(tag="in_background", input_type=File(optional=True), prefix="--background", doc=InputDocumentation(doc="(if the -g/--go is specified, the -k/--kegg are ignored)")), ToolInput(tag="in_assoc", input_type=File(optional=True), prefix="--assoc", doc=InputDocumentation(doc="p value cutoff (default: 0.05)"))], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enrich_V0_1_0().translate("wdl")

