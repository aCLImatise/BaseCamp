from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bamgroupreads_Py_V0_1_0 = CommandToolBuilder(tool="bamgroupreads.py", base_command=["bamgroupreads.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BAM file")), ToolInput(tag="in_read_group", input_type=String(optional=True), prefix="--readgroup", doc=InputDocumentation(doc="Read group(s) to extract (comma separated)")), ToolInput(tag="in_reset_dups", input_type=Boolean(optional=True), prefix="--reset_dups", doc=InputDocumentation(doc="Reset duplicate flags")), ToolInput(tag="in_fix_flags", input_type=Boolean(optional=True), prefix="--fix_flags", doc=InputDocumentation(doc="Fix mate flags for secondary reads")), ToolInput(tag="in_input_sam_format", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Input is SAM format")), ToolInput(tag="in_output_bam_format", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output BAM format")), ToolInput(tag="in_output_uncompressed_bam", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Output uncompressed BAM format (implies -b)")), ToolInput(tag="in_split_reads_flag", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="split reads are flagged as secondary, not supplementary. For compatibility with legacy BWA-MEM '-M' flag"))], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamgroupreads_Py_V0_1_0().translate("wdl")

