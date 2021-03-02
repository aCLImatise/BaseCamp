from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Bam2Occupancy_V0_1_0 = CommandToolBuilder(tool="bam2occupancy", base_command=["bam2occupancy"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name for this occupancy vector (prepended to occupancy\nvector)")), ToolInput(tag="in_hash_file", input_type=Int(optional=True), prefix="--hashfile", doc=InputDocumentation(doc="for .bam input, write sorted hash file to the given\npath")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="for .bam input, output progress messages every million\nreads to stderr")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="input .bam file, or hash .h5 file created by a\nprevious run"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Occupancy_V0_1_0().translate("wdl", allow_empty_container=True)

