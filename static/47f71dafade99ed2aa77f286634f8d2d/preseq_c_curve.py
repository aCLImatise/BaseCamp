from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Preseq_C_Curve_V0_1_0 = CommandToolBuilder(tool="preseq_c_curve", base_command=["preseq", "c_curve"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="yield output file (default: stdout)")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="-step", doc=InputDocumentation(doc="step size in extrapolations (default: 1e+06)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more information")), ToolInput(tag="in_pe", input_type=Boolean(optional=True), prefix="-pe", doc=InputDocumentation(doc="input is paired end read file")), ToolInput(tag="in_hist", input_type=Boolean(optional=True), prefix="-hist", doc=InputDocumentation(doc="input is a text file containing the observed histogram")), ToolInput(tag="in_vals", input_type=Boolean(optional=True), prefix="-vals", doc=InputDocumentation(doc="input is a text file containing only the observed counts")), ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="-bam", doc=InputDocumentation(doc="input is in BAM format")), ToolInput(tag="in_seg_len", input_type=Boolean(optional=True), prefix="-seg_len", doc=InputDocumentation(doc="maximum segment length when merging paired end bam reads\n(default: 5000)")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="seed for random number generator")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_c_curve", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sorted_bed_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="yield output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preseq_C_Curve_V0_1_0().translate("wdl", allow_empty_container=True)

