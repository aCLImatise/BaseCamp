from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Split_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="split_sequences.py", base_command=["split_sequences.py"], inputs=[ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Split based on this threshold of length")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="INPUT sequence file (default=None)")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="OUTPUT prefix, will write fragmentary file to\nOUTPUT.frag.fas and full-length file to\nOUTPUT.full.fas (default=output)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Sequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

