from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Bamtofastq_Py_V0_1_0 = CommandToolBuilder(tool="bamtofastq.py", base_command=["bamtofastq.py"], inputs=[ToolInput(tag="in_read_group", input_type=String(optional=True), prefix="--readgroup", doc=InputDocumentation(doc="Read group(s) to extract (comma separated)")), ToolInput(tag="in_rename", input_type=Boolean(optional=True), prefix="--rename", doc=InputDocumentation(doc="Rename reads")), ToolInput(tag="in_is_sam", input_type=Boolean(optional=True), prefix="--is_sam", doc=InputDocumentation(doc="Input is SAM format")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="--header", doc=InputDocumentation(doc="Write BAM header to file\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file(s). If absent then defaults to stdin."))], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtofastq_Py_V0_1_0().translate("wdl")

