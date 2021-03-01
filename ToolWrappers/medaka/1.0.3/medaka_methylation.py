from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Medaka_Methylation_V0_1_0 = CommandToolBuilder(tool="medaka_methylation", base_command=["medaka", "methylation"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Verbose logging of debug information. (default: 20)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Minimal logging; warnings only). (default: 20)")), ToolInput(tag="in_guppy_two_sam", input_type=Int(), position=0, doc=InputDocumentation(doc="Convert Guppy .fast5 files with methylation calls to .sam\nfile, output to stdout.")), ToolInput(tag="in_call", input_type=String(), position=1, doc=InputDocumentation(doc="Call methylation from .bam file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Methylation_V0_1_0().translate("wdl", allow_empty_container=True)

