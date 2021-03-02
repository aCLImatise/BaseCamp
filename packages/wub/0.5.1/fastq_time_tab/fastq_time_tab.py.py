from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fastq_Time_Tab_Py_V0_1_0 = CommandToolBuilder(tool="fastq_time_tab.py", base_command=["fastq_time_tab.py"], inputs=[ToolInput(tag="in_tab_separated_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Tab separated file to save read time table.")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="Input fastq file."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Time_Tab_Py_V0_1_0().translate("wdl")

