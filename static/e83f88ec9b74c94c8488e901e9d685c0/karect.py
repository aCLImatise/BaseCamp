from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Karect_V0_1_0 = CommandToolBuilder(tool="karect", base_command=["karect"], inputs=[ToolInput(tag="in_please", input_type=String(optional=True), prefix="-Please", doc=InputDocumentation(doc="the tool you want to run: (correct-align-eval-merge).")), ToolInput(tag="in_run", input_type=Boolean(optional=True), prefix="-Run", doc=InputDocumentation(doc="'karect -[correct|align|eval|merge]' to find information about how to run a specific tool.\n1) correct: a tool to correct assembly reads from fasta/fastq files.\n2) align:   a tool to align original assembly reads as pre-processing for evaluation.\n3) eval:    a tool to evaluate assembly reads correction.\n4) merge:   a tool to concatenate fasta/fastq files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Karect_V0_1_0().translate("wdl", allow_empty_container=True)

