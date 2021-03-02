from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean

Fastspar_V0_1_0 = CommandToolBuilder(tool="fastspar", base_command=["fastspar"], inputs=[ToolInput(tag="in_otu_table", input_type=File(optional=True), prefix="--otu_table", doc=InputDocumentation(doc="OTU input OTU count table")), ToolInput(tag="in_correlation", input_type=File(optional=True), prefix="-correlation", doc=InputDocumentation(doc="Correlation output table")), ToolInput(tag="in_covariance", input_type=File(optional=True), prefix="--covariance", doc=InputDocumentation(doc="Covariance output table")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="Number of interations to perform (default: 50)")), ToolInput(tag="in_exclusion_iterations", input_type=Int(optional=True), prefix="--exclusion_iterations", doc=InputDocumentation(doc="Number of exclusion interations to perform (default: 10)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Correlation strength exclusion threshold (default: 0.1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (default: 1)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random number generator seed (default: 1)")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Assume yes for prompts (default: unset)"))], outputs=[], container="quay.io/biocontainers/fastspar:1.0.0--h7f8d780_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastspar_V0_1_0().translate("wdl")

