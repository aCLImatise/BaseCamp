from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String

Rnftools_Merge_V0_1_0 = CommandToolBuilder(tool="rnftools_merge", base_command=["rnftools", "merge"], inputs=[ToolInput(tag="in_input_fastq_files", input_type=Array(t=String(), optional=True), prefix="-i", doc=InputDocumentation(doc="input FASTQ files")), ToolInput(tag="in_mode_pairedendbwa_pairedendbfast", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="mode for mergeing files (single-end / paired-end-bwa / paired-end-bfast)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

