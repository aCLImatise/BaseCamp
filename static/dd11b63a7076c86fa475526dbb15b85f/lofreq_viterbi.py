from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Lofreq_Viterbi_V0_1_0 = CommandToolBuilder(tool="lofreq_viterbi", base_command=["lofreq", "viterbi"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Indexed reference fasta file [null]")), ToolInput(tag="in_keep_flags", input_type=Boolean(optional=True), prefix="--keepflags", doc=InputDocumentation(doc="Don't delete flags MC, MD, NM and A, which are all prone to change during realignment.")), ToolInput(tag="in_def_qual", input_type=Int(optional=True), prefix="--defqual", doc=InputDocumentation(doc="Assume INT as quality for all bases with BQ2. Default (=-1) is to use median quality of bases in read.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output BAM file [- = stdout = default]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BAM file [- = stdout = default]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lofreq_Viterbi_V0_1_0().translate("wdl", allow_empty_container=True)

