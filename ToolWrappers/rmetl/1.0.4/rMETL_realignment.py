from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Rmetl_Realignment_V0_1_0 = CommandToolBuilder(tool="rMETL_realignment", base_command=["rMETL", "realignment"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use.[8]")), ToolInput(tag="in_presets", input_type=String(optional=True), prefix="--presets", doc=InputDocumentation(doc="The sequencing platform <pacbio,ont> of the\nreads.[pacbio]")), ToolInput(tag="in_sub_read_length", input_type=Int(optional=True), prefix="--subread_length", doc=InputDocumentation(doc="Length of fragments reads are split into [128]")), ToolInput(tag="in_sub_read_corridor", input_type=Int(optional=True), prefix="--subread_corridor", doc=InputDocumentation(doc="Length of corridor sub-reads are aligned with [20]\n")), ToolInput(tag="in_t_jiang_at_hit_dot_edu_dot_cn", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Input potential_ME.fa on STAGE detection.")), ToolInput(tag="in_me_ref", input_type=String(), position=2, doc=InputDocumentation(doc="The transposable element concensus in fasta format.")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc="Directory to output realignments."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmetl_Realignment_V0_1_0().translate("wdl", allow_empty_container=True)

