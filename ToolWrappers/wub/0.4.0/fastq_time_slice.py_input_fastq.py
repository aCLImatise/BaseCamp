from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastq_Time_Slice_Py_Input_Fastq_V0_1_0 = CommandToolBuilder(tool="fastq_time_slice.py_input_fastq", base_command=["fastq_time_slice.py", "input_fastq"], inputs=[ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_time_slice_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Time_Slice_Py_Input_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

