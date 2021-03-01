from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Seqhax_Convert_V0_1_0 = CommandToolBuilder(tool="seqhax_convert", base_command=["seqhax", "convert"], inputs=[ToolInput(tag="in_output_fasta", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Output FASTA.")), ToolInput(tag="in_output_fastq_adding", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Output FASTQ (adding qualities)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

