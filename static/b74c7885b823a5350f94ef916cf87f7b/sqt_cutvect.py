from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sqt_Cutvect_V0_1_0 = CommandToolBuilder(tool="sqt_cutvect", base_command=["sqt", "cutvect"], inputs=[ToolInput(tag="in_vector", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA with vector sequence(s)")), ToolInput(tag="in_reads", input_type=String(), position=1, doc=InputDocumentation(doc="FASTA/FASTQ with read"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqt_Cutvect_V0_1_0().translate("wdl", allow_empty_container=True)

