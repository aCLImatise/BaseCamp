from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Divide_Bam_Py_V0_1_0 = CommandToolBuilder(tool="divide_bam.py", base_command=["divide_bam.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM format. BAM file should be\nsorted and indexed.")), ToolInput(tag="in_subset_num", input_type=Int(optional=True), prefix="--subset-num", doc=InputDocumentation(doc="Number of small BAM files")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output BAM files. Output 'Prefix_num.bam'.")), ToolInput(tag="in_skip_unmap", input_type=Boolean(optional=True), prefix="--skip-unmap", doc=InputDocumentation(doc="Skip unmapped reads."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Divide_Bam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

