from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Alfred_Replication_V0_1_0 = CommandToolBuilder(tool="alfred_replication", base_command=["alfred", "replication"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="[ --qual ] arg (=1)          min. mapping quality")), ToolInput(tag="in_arg_sliding_window", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --window ] arg (=50000)    sliding window size")), ToolInput(tag="in_arg_window_offset", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --step ] arg (=1000)       window offset (step size)")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg          reference fasta file (required)")), ToolInput(tag="in_arg_pref_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outprefix ] arg (=pref)  output file prefix")), ToolInput(tag="in_gone_b_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_s_one_dot_bam", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s_two_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_s_three_dot_bam", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_s_four_dot_bam", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_g_two_dot_bam", input_type=Int(), position=5, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_pref_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_pref_output", type_hint=File()), doc=OutputDocumentation(doc="[ --outprefix ] arg (=pref)  output file prefix"))], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Replication_V0_1_0().translate("wdl")

