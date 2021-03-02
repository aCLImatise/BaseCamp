from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Seq_Trim_Fastq_Py_V0_1_0 = CommandToolBuilder(tool="seq_trim_fastq.py", base_command=["seq_trim_fastq.py"], inputs=[ToolInput(tag="in_left", input_type=Int(optional=True), prefix="--left", doc=InputDocumentation(doc="Number of base pairs to trim from the left.")), ToolInput(tag="in_right", input_type=Int(optional=True), prefix="--right", doc=InputDocumentation(doc="Number of base pairs to trim from the right."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Trim_Fastq_Py_V0_1_0().translate("wdl", allow_empty_container=True)

