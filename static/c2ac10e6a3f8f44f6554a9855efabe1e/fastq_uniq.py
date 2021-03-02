from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fastq_Uniq_V0_1_0 = CommandToolBuilder(tool="fastq_uniq", base_command=["fastq-uniq"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print status along the way"))], outputs=[], container="quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Uniq_V0_1_0().translate("wdl")

