from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pore_C_Alignments_Reformat_Bam_V0_1_0 = CommandToolBuilder(tool="pore_c_alignments_reformat_bam", base_command=["pore_c", "alignments", "reformat-bam"], inputs=[ToolInput(tag="in_input_is_bam", input_type=Boolean(optional=True), prefix="--input-is-bam", doc=InputDocumentation(doc="If piping a BAM from stdin (rather than sam)  [default:\nFalse]")), ToolInput(tag="in_output_is_bam", input_type=Boolean(optional=True), prefix="--output-is-bam", doc=InputDocumentation(doc="If piping a BAM to stdout (rather than sam)  [default:\nFalse]")), ToolInput(tag="in_set_bx_flag", input_type=Boolean(optional=True), prefix="--set-bx-flag", doc=InputDocumentation(doc="Set the BX tag to the read name  [default: False]")), ToolInput(tag="in_input_sam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_sam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Alignments_Reformat_Bam_V0_1_0().translate("wdl")

