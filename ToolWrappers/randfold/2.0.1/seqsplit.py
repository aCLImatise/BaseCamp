from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Seqsplit_V0_1_0 = CommandToolBuilder(tool="seqsplit", base_command=["seqsplit"], inputs=[ToolInput(tag="in_output_new_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output the new FASTA file to <file>")), ToolInput(tag="in_frag_file", input_type=File(optional=True), prefix="--fragfile", doc=InputDocumentation(doc=": save one-line-per-frag coord summary file to <f>")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify sequence file format <s>")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc=": set max length of each unique seq frag to <n>")), ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc=": set overlap length to <n> (total frag size = length+overlap)")), ToolInput(tag="in_short_names", input_type=Boolean(optional=True), prefix="--shortnames", doc=InputDocumentation(doc=": use short 'frag1' names, not '<src>/<from>-<to>'")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_new_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_new_file", type_hint=File()), doc=OutputDocumentation(doc=": output the new FASTA file to <file>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqsplit_V0_1_0().translate("wdl", allow_empty_container=True)

