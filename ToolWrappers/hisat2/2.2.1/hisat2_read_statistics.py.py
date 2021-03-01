from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Hisat2_Read_Statistics_Py_V0_1_0 = CommandToolBuilder(tool="hisat2_read_statistics.py", base_command=["hisat2_read_statistics.py"], inputs=[ToolInput(tag="in_reads_count_default", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="reads count (default: 10000)")), ToolInput(tag="in_read_file", input_type=String(), position=0, doc=InputDocumentation(doc="reads file"))], outputs=[], container="quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Read_Statistics_Py_V0_1_0().translate("wdl")

