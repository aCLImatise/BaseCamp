from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Samtools_Phase_V0_1_0 = CommandToolBuilder(tool="samtools_phase", base_command=["samtools", "phase"], inputs=[ToolInput(tag="in_block_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="block length [13]")), ToolInput(tag="in_prefix_bams_output", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="prefix of BAMs to output [null]")), ToolInput(tag="in_min_het_phredlod", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="min het phred-LOD [37]")), ToolInput(tag="in_min_base_quality", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="min base quality in het calling [13]")), ToolInput(tag="in_max_read_depth", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="max read depth [256]")), ToolInput(tag="in_attempt_fix_chimeras", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="do not attempt to fix chimeras")), ToolInput(tag="in_drop_reads_ambiguous", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="drop reads with ambiguous phase")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Phase_V0_1_0().translate("wdl", allow_empty_container=True)

