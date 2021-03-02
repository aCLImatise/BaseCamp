from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Bamqc_Py_V0_1_0 = CommandToolBuilder(tool="bamQC.py", base_command=["bamQC.py"], inputs=[ToolInput(tag="in_bam_file_in", input_type=File(optional=True), prefix="--bam-file-in", doc=InputDocumentation(doc="Input BAM file (default: None)")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="max frag length to consider (default: 1000)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamqc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

