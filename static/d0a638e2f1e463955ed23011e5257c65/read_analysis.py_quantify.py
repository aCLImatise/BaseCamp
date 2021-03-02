from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Read_Analysis_Py_Quantify_V0_1_0 = CommandToolBuilder(tool="read_analysis.py_quantify", base_command=["read_analysis.py", "quantify"], inputs=[ToolInput(tag="in_read", input_type=String(optional=True), prefix="--read", doc=InputDocumentation(doc="Input reads for quantification")), ToolInput(tag="in_ref_t", input_type=String(optional=True), prefix="--ref_t", doc=InputDocumentation(doc="Reference Transcriptome")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="The location and prefix of outputting profile (Default\n= expression)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for alignment (Default = 1)\n"))], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Analysis_Py_Quantify_V0_1_0().translate("wdl")

