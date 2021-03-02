from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastq_Qual_Tab_Py_Input_Fastq_V0_1_0 = CommandToolBuilder(tool="fastq_qual_tab.py_input_fastq", base_command=["fastq_qual_tab.py", "input_fastq"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Qual_Tab_Py_Input_Fastq_V0_1_0().translate("wdl")

