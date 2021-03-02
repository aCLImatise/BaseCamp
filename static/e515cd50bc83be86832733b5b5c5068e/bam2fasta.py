from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam2Fasta_V0_1_0 = CommandToolBuilder(tool="bam2fasta", base_command=["bam2fasta"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/bam2fasta:1.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fasta_V0_1_0().translate("wdl")

