from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam_Fill_Unaligned_Py_Output_File_V0_1_0 = CommandToolBuilder(tool="bam_fill_unaligned.py_output_file", base_command=["bam_fill_unaligned.py", "output_file"], inputs=[ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_fill_unaligned_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Fill_Unaligned_Py_Output_File_V0_1_0().translate("wdl")

