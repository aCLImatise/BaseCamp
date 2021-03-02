from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Fastspar_Bootstrap_V0_1_0 = CommandToolBuilder(tool="fastspar_bootstrap", base_command=["fastspar_bootstrap"], inputs=[ToolInput(tag="in_otu_table", input_type=File(optional=True), prefix="--otu_table", doc=InputDocumentation(doc="OTU input table")), ToolInput(tag="in_number", input_type=File(optional=True), prefix="--number", doc=InputDocumentation(doc="Number of bootstrap samples to generate")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix out bootstrap output files")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (default: 1)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random number generator seed (default: 1)")), ToolInput(tag="in_bootstraps", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fastspar:1.0.0--h7f8d780_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastspar_Bootstrap_V0_1_0().translate("wdl")

