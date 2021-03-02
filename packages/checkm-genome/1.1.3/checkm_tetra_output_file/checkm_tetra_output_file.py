from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Checkm_Tetra_Output_File_V0_1_0 = CommandToolBuilder(tool="checkm_tetra_output_file", base_command=["checkm", "tetra", "output_file"], inputs=[ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_check_m", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tetra", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Tetra_Output_File_V0_1_0().translate("wdl")

