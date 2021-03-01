from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Smof_Sample_V0_1_0 = CommandToolBuilder(tool="smof_sample", base_command=["smof", "sample"], inputs=[ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="sample size (default=1)")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="set random seed (for reproducibility/debugging)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container="quay.io/biocontainers/smof:2.21.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Sample_V0_1_0().translate("wdl")

