from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reverse_Fastq_Py_Input_Fastq_V0_1_0 = CommandToolBuilder(tool="reverse_fastq.py_input_fastq", base_command=["reverse_fastq.py", "input_fastq"], inputs=[ToolInput(tag="in_output_fast_q", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reverse_Fastq_Py_Input_Fastq_V0_1_0().translate("wdl")

