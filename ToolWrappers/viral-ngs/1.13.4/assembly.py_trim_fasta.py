from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Assembly_Py_Trim_Fasta_V0_1_0 = CommandToolBuilder(tool="assembly.py_trim_fasta", base_command=["assembly.py", "trim_fasta"], inputs=[ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_in_fasta", input_type=String(), position=0, doc=InputDocumentation(doc="Input fasta file")), ToolInput(tag="in_out_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Output (trimmed) fasta file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Py_Trim_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

