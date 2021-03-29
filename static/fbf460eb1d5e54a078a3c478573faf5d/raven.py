from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Raven_V0_1_0 = CommandToolBuilder(tool="raven", base_command=["raven"], inputs=[ToolInput(tag="in_weaken", input_type=Boolean(optional=True), prefix="--weaken", doc=InputDocumentation(doc="use larger (k, w) when assembling highly accurate sequences")), ToolInput(tag="in_polishing_rounds", input_type=Int(optional=True), prefix="--polishing-rounds", doc=InputDocumentation(doc="default: 2\nnumber of times racon is invoked")), ToolInput(tag="in_match", input_type=Int(optional=True), prefix="--match", doc=InputDocumentation(doc="default: 3\nscore for matching bases")), ToolInput(tag="in_mismatch", input_type=Int(optional=True), prefix="--mismatch", doc=InputDocumentation(doc="default: -5\nscore for mismatching bases")), ToolInput(tag="in_gap", input_type=Int(optional=True), prefix="--gap", doc=InputDocumentation(doc="default: -4\ngap penalty (must be negative)")), ToolInput(tag="in_graphical_fragment_assembly", input_type=String(optional=True), prefix="--graphical-fragment-assembly", doc=InputDocumentation(doc="prints the assembly graph in GFA format")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="resume previous run from last checkpoint")), ToolInput(tag="in_disable_checkpoints", input_type=Boolean(optional=True), prefix="--disable-checkpoints", doc=InputDocumentation(doc="disable checkpoint file creation")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="default: 1\nnumber of threads"))], outputs=[], container="quay.io/biocontainers/raven-assembler:1.5.0--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Raven_V0_1_0().translate("wdl")

