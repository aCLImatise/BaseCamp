from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Paraclu_Cut_V0_1_0 = CommandToolBuilder(tool="paraclu_cut", base_command=["paraclu-cut"], inputs=[ToolInput(tag="in_maximum_cluster_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="maximum cluster length (default 200)")), ToolInput(tag="in_minimum_density_increase", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="minimum density increase (default 2)")), ToolInput(tag="in_density_increase_applies", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="density increase applies to single clusters, not cumulatively"))], outputs=[], container="quay.io/biocontainers/paraclu:10--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paraclu_Cut_V0_1_0().translate("wdl")

