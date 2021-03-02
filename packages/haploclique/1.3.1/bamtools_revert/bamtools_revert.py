from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bamtools_Revert_V0_1_0 = CommandToolBuilder(tool="bamtools_revert", base_command=["bamtools", "revert"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output BAM file [stdout]")), ToolInput(tag="in_force_compression", input_type=Boolean(optional=True), prefix="-forceCompression", doc=InputDocumentation(doc="if results are sent to stdout\n(like when piping to another tool),\ndefault behavior is to leave output\nuncompressed. Use this flag to override\nand force compression")), ToolInput(tag="in_keep_duplicate", input_type=Boolean(optional=True), prefix="-keepDuplicate", doc=InputDocumentation(doc="keep duplicates marked")), ToolInput(tag="in_keep_qualities", input_type=Boolean(optional=True), prefix="-keepQualities", doc=InputDocumentation(doc="keep base qualities (do not\nreplace with OQ contents)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output BAM file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Revert_V0_1_0().translate("wdl", allow_empty_container=True)

