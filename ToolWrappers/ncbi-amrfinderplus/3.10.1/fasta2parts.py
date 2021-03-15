from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fasta2Parts_V0_1_0 = CommandToolBuilder(tool="fasta2parts", base_command=["fasta2parts"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="-profile", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="-noprogress", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_qc", input_type=Boolean(optional=True), prefix="-qc", doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parts_max", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Parts_V0_1_0().translate("wdl")

