from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pore_C_Alignments_Create_Table_V0_1_0 = CommandToolBuilder(tool="pore_c_alignments_create_table", base_command=["pore_c", "alignments", "create-table"], inputs=[ToolInput(tag="in_alignment_haplotypes", input_type=File(optional=True), prefix="--alignment-haplotypes", doc=InputDocumentation(doc="The alignment to haplotype mapping from")), ToolInput(tag="in_analysis", input_type=String(), position=0, doc=InputDocumentation(doc="Options:")), ToolInput(tag="in_what_shap", input_type=String(), position=1, doc=InputDocumentation(doc="--help                       Show this message and exit."))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Alignments_Create_Table_V0_1_0().translate("wdl")

