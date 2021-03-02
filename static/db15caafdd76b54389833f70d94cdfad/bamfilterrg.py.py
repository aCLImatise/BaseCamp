from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Bamfilterrg_Py_V0_1_0 = CommandToolBuilder(tool="bamfilterrg.py", base_command=["bamfilterrg.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BAM file")), ToolInput(tag="in_read_group", input_type=String(optional=True), prefix="--readgroup", doc=InputDocumentation(doc="Read group(s) to extract (comma separated)")), ToolInput(tag="in_output_first_alignments", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Output first n alignments and quit")), ToolInput(tag="in_input_sam_format", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Input is SAM format")), ToolInput(tag="in_output_bam_format", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output BAM format")), ToolInput(tag="in_output_uncompressed_bam", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Output uncompressed BAM format (implies -b)"))], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamfilterrg_Py_V0_1_0().translate("wdl")

