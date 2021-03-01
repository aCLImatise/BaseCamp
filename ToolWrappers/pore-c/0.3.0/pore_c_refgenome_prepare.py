from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pore_C_Refgenome_Prepare_V0_1_0 = CommandToolBuilder(tool="pore_c_refgenome_prepare", base_command=["pore_c", "refgenome", "prepare"], inputs=[ToolInput(tag="in_genome_id", input_type=String(optional=True), prefix="--genome-id", doc=InputDocumentation(doc="An ID for this genome assembly")), ToolInput(tag="in_reference_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Refgenome_Prepare_V0_1_0().translate("wdl")

