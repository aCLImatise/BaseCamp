from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Refgenie_Compare_Genome2_V0_1_0 = CommandToolBuilder(tool="refgenie_compare_GENOME2", base_command=["refgenie", "compare", "GENOME2"], inputs=[ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_compare", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_two", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Compare_Genome2_V0_1_0().translate("wdl")

