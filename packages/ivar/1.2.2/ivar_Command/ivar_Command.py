from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ivar_Command_V0_1_0 = CommandToolBuilder(tool="ivar_Command", base_command=["ivar", "Command"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Description")), ToolInput(tag="in_trim", input_type=String(), position=1, doc=InputDocumentation(doc="Trim reads in aligned BAM file")), ToolInput(tag="in_variants", input_type=String(), position=2, doc=InputDocumentation(doc="Call variants from aligned BAM file")), ToolInput(tag="in_filter_variants", input_type=String(), position=3, doc=InputDocumentation(doc="Filter variants across replicates or samples")), ToolInput(tag="in_consensus", input_type=String(), position=4, doc=InputDocumentation(doc="Call consensus from aligned BAM file")), ToolInput(tag="in_get_masked", input_type=String(), position=5, doc=InputDocumentation(doc="Detect primer mismatches and get primer indices for the amplicon to be masked")), ToolInput(tag="in_remove_reads", input_type=String(), position=6, doc=InputDocumentation(doc="Remove reads from trimmed BAM file")), ToolInput(tag="in_version", input_type=String(), position=7, doc=InputDocumentation(doc="Show version information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ivar_Command_V0_1_0().translate("wdl", allow_empty_container=True)

