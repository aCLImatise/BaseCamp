from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Flye_Samtools_Index_V0_1_0 = CommandToolBuilder(tool="flye_samtools_index", base_command=["flye-samtools", "index"], inputs=[ToolInput(tag="in_generate_baiformat_index", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Generate BAI-format index for BAM files [default]")), ToolInput(tag="in_generate_csiformat_index", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Generate CSI-format index for BAM files")), ToolInput(tag="in_set_minimum_interval", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Set minimum interval size for CSI indices to 2^INT [14]")), ToolInput(tag="in_at", input_type=Int(optional=True), prefix="-@", doc=InputDocumentation(doc="Sets the number of threads [none]")), ToolInput(tag="in_bc", input_type=Boolean(optional=True), prefix="-bc", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_index", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Index_V0_1_0().translate("wdl", allow_empty_container=True)

