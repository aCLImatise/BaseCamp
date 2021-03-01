from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam_Count_Reads_Py_Bam_V0_1_0 = CommandToolBuilder(tool="bam_count_reads.py_bam", base_command=["bam_count_reads.py", "bam"], inputs=[ToolInput(tag="in_z", input_type=String(optional=True), prefix="-z", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_count_reads_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Count_Reads_Py_Bam_V0_1_0().translate("wdl")

