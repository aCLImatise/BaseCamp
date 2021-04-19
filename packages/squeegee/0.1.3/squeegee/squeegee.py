from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Squeegee_V0_1_0 = CommandToolBuilder(tool="squeegee", base_command=["squeegee"], inputs=[ToolInput(tag="in_num_core", input_type=Int(optional=True), prefix="--numcore", doc=InputDocumentation(doc="Number of threads.")), ToolInput(tag="in_min_prevalence", input_type=Int(optional=True), prefix="--min-prevalence", doc=InputDocumentation(doc="Minimum prevalence threshold for a species to be\nindentified as a contaminant species.")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--min-score", doc=InputDocumentation(doc="Minimum contaminant score threshold for a species to\nbe indentified as a contaminant species.")), ToolInput(tag="in_min_align", input_type=Int(optional=True), prefix="--min-align", doc=InputDocumentation(doc="Minimum breadth of genome coverge threshold for a\nspecies to be indentified as a contaminant species.")), ToolInput(tag="in_stacked_idx", input_type=String(optional=True), prefix="--stacked-idx", doc=InputDocumentation(doc="Index to determine whether or not aligned reads have\nbeen stacked in small region.")), ToolInput(tag="in_metadata", input_type=String(), position=0, doc=InputDocumentation(doc="input matadata in txt format")), ToolInput(tag="in_kraken_db", input_type=String(), position=1, doc=InputDocumentation(doc="directory of kraken database")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="squeegee output directory"))], outputs=[], container="quay.io/biocontainers/squeegee:0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Squeegee_V0_1_0().translate("wdl")

