from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File, String

Debarcer_Group_V0_1_0 = CommandToolBuilder(tool="debarcer_group", base_command=["debarcer", "group"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--Outdir", doc=InputDocumentation(doc="Output directory where subdirectories are created")), ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--Region", doc=InputDocumentation(doc="Region coordinates to search for UMIs. chrN:posA-posB.\nposA and posB are 1-based included")), ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--Bamfile", doc=InputDocumentation(doc="Path to the BAM file")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--Config", doc=InputDocumentation(doc="Path to the config file")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--Distance", doc=InputDocumentation(doc="Hamming distance threshold for connecting parent-\nchildren umis")), ToolInput(tag="in_position", input_type=String(optional=True), prefix="--Position", doc=InputDocumentation(doc="Umi position threshold for grouping umis together")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--Ignore", doc=InputDocumentation(doc="Keep the most abundant family and ignore families at\nother positions within each group. Default is False")), ToolInput(tag="in_truncate", input_type=String(optional=True), prefix="--Truncate", doc=InputDocumentation(doc="Discard reads overlapping with the genomic region if\nTrue. Default is False")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--Separator", doc=InputDocumentation(doc="String separating the UMI from the remaining of the\nread name")), ToolInput(tag="in_read_count", input_type=Int(optional=True), prefix="--ReadCount", doc=InputDocumentation(doc="Minimum number of reads in region required for\ngrouping. Default is 0\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory where subdirectories are created"))], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Group_V0_1_0().translate("wdl")

