from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Comparedropseqalignments_V0_1_0 = CommandToolBuilder(tool="CompareDropSeqAlignments", base_command=["CompareDropSeqAlignments"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_value_dot", input_type=String(), position=1, doc=InputDocumentation(doc="READ_QUALITY=Integer          The map quality for a read to be considered uniquely mapped.  Default value: 10. This"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparedropseqalignments_V0_1_0().translate("wdl", allow_empty_container=True)

