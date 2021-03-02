from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reverse_Fastq_Py_Output_Fastq_V0_1_0 = CommandToolBuilder(tool="reverse_fastq.py_output_fastq", base_command=["reverse_fastq.py", "output_fastq"], inputs=[ToolInput(tag="in_reverse_fast_q_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_q", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fast_q", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reverse_Fastq_Py_Output_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

