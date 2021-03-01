from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Filterbambytag_V0_1_0 = CommandToolBuilder(tool="FilterBamByTag", base_command=["FilterBamByTag"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_tagstring_bam_tag", input_type=String(), position=0, doc=InputDocumentation(doc="TAG=String                    The BAM tag to filter on.  Required. ")), ToolInput(tag="in_match_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For example, if the allowed value is A and the tag is A,B, the read would match. ")), ToolInput(tag="in_passingreadthresholddouble_set_value", input_type=String(), position=0, doc=InputDocumentation(doc="PASSING_READ_THRESHOLD=Double If set to a a value < 1, the program will fail if fewer than this fraction of reads pass"))], outputs=[], container="quay.io/biocontainers/dropseq_tools:2.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterbambytag_V0_1_0().translate("wdl")

