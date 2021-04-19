from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Trimmer_Py_Reads_Filt_2_Fq_V0_1_0 = CommandToolBuilder(tool="trimmer.py_reads.filt_2.fq", base_command=["trimmer.py", "reads.filt_2.fq"], inputs=[ToolInput(tag="in_trimmer_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_one_dot_fq", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_two_dot_fq", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_one_dot_fq", input_type=Int(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_two_dot_fq", input_type=Int(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trimmer_Py_Reads_Filt_2_Fq_V0_1_0().translate("wdl", allow_empty_container=True)

