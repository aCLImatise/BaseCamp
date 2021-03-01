from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Notseq_V0_1_0 = CommandToolBuilder(tool="notseq", base_command=["notseq"], inputs=[ToolInput(tag="in_junk_out_seq", input_type=File(optional=True), prefix="-junkoutseq", doc=InputDocumentation(doc="seqoutall  [/dev/null] This file collects the sequences\nwhich you have excluded from the main\noutput file of sequences.")), ToolInput(tag="in_parameter_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The list of sequence names can be separated"))], outputs=[ToolOutput(tag="out_junk_out_seq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_junk_out_seq", type_hint=File()), doc=OutputDocumentation(doc="seqoutall  [/dev/null] This file collects the sequences\nwhich you have excluded from the main\noutput file of sequences."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Notseq_V0_1_0().translate("wdl", allow_empty_container=True)

