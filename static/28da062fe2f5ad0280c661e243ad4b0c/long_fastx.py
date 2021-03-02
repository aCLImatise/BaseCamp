from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Long_Fastx_V0_1_0 = CommandToolBuilder(tool="long_fastx", base_command=["long_fastx"], inputs=[ToolInput(tag="in_longest", input_type=String(optional=True), prefix="--longest", doc=InputDocumentation(doc="Percentage of longest reads to partition.")), ToolInput(tag="in_bases", input_type=Int(optional=True), prefix="--bases", doc=InputDocumentation(doc="Maximum number of bases (subject to at least one read.)")), ToolInput(tag="in_others", input_type=File(optional=True), prefix="--others", doc=InputDocumentation(doc="Write all other reads to file.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input .fasta/q file.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output .fasta file."))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Long_Fastx_V0_1_0().translate("wdl")

