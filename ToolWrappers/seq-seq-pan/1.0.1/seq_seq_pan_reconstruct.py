from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Seq_Seq_Pan_Reconstruct_V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_reconstruct", base_command=["seq-seq-pan", "reconstruct"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress warnings.")), ToolInput(tag="in_order", input_type=Int(optional=True), prefix="--order", doc=InputDocumentation(doc="Ordering of blocks in XMFA/FASTA output (0,1,2,...)\n[default: 0]")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="path to output directory")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="File prefix and sequence header for output FASTA /\nXFMA file")), ToolInput(tag="in_x_mfa", input_type=File(optional=True), prefix="--xmfa", doc=InputDocumentation(doc="XMFA input file")), ToolInput(tag="in_consensus", input_type=File(optional=True), prefix="--consensus", doc=InputDocumentation(doc="consensus FASTA file used in XMFA\n")), ToolInput(tag="in_seq_seq_pando_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reconstruct", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="path to output directory")), ToolOutput(tag="out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name", type_hint=File()), doc=OutputDocumentation(doc="File prefix and sequence header for output FASTA /\nXFMA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Reconstruct_V0_1_0().translate("wdl", allow_empty_container=True)

