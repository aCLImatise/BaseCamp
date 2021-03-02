from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Break_Contigs_V0_1_0 = CommandToolBuilder(tool="break_contigs", base_command=["break_contigs"], inputs=[ToolInput(tag="in_alignment", input_type=Boolean(optional=True), prefix="--alignment", doc=InputDocumentation(doc="bed file for alignment (string)")), ToolInput(tag="in_breakpoints", input_type=Boolean(optional=True), prefix="--breakpoints", doc=InputDocumentation(doc="breakpoints (string)")), ToolInput(tag="in_min_size", input_type=Boolean(optional=True), prefix="--min_size", doc=InputDocumentation(doc="Minimum mate pair separation for error findng (int)")), ToolInput(tag="in_conti_glen", input_type=Boolean(optional=True), prefix="--contiglen", doc=InputDocumentation(doc="length of contigs (string)")), ToolInput(tag="in_iteration", input_type=Boolean(optional=True), prefix="--iteration", doc=InputDocumentation(doc="Iteration number (int)"))], outputs=[], container="quay.io/biocontainers/salsa2:2.2--py27h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Break_Contigs_V0_1_0().translate("wdl")

