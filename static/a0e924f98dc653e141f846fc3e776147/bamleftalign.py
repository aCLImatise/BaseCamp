from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Bamleftalign_V0_1_0 = CommandToolBuilder(tool="bamleftalign", base_command=["bamleftalign"], inputs=[ToolInput(tag="in_fast_a_reference", input_type=File(optional=True), prefix="--fasta-reference", doc=InputDocumentation(doc="FASTA reference file to use for realignment (required)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging information about realignment process")), ToolInput(tag="in_suppress_output", input_type=Boolean(optional=True), prefix="--suppress-output", doc=InputDocumentation(doc="Don't write BAM output stream (for debugging)")), ToolInput(tag="in_max_iterations", input_type=Int(optional=True), prefix="--max-iterations", doc=InputDocumentation(doc="Iterate the left-realignment no more than this many times")), ToolInput(tag="in_compressed", input_type=Boolean(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed BAM on stdout, default is uncompressed")), ToolInput(tag="in_bam", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stream", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamleftalign_V0_1_0().translate("wdl", allow_empty_container=True)

