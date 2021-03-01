from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Linguistic_Sequence_Complexity_Py_V0_1_0 = CommandToolBuilder(tool="linguistic_sequence_complexity.py", base_command=["linguistic_sequence_complexity.py"], inputs=[ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="GCTA sequences (default: None)")), ToolInput(tag="in_substring_length", input_type=Int(optional=True), prefix="--substring-length", doc=InputDocumentation(doc="sub-lenght up to... (default: None)\n"))], outputs=[], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Linguistic_Sequence_Complexity_Py_V0_1_0().translate("wdl")

