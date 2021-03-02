from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bamtools_Merge_V0_1_0 = CommandToolBuilder(tool="bamtools_merge", base_command=["bamtools", "merge"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file(s)")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output BAM file")), ToolInput(tag="in_force_compression", input_type=Boolean(optional=True), prefix="-forceCompression", doc=InputDocumentation(doc="if results are sent to stdout\n(like when piping to another tool),\ndefault behavior is to leave output\nuncompressed. Use this flag to override\nand force compression")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="-region", doc=InputDocumentation(doc="genomic region. See README for\nmore details"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output BAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

