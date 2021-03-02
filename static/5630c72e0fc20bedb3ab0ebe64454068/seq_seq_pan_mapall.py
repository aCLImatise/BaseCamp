from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Seq_Seq_Pan_Mapall_V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_mapall", base_command=["seq-seq-pan", "mapall"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress warnings.")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="path to output directory")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="File prefix and sequence header for output FASTA /\nXFMA file")), ToolInput(tag="in_consensus", input_type=File(optional=True), prefix="--consensus", doc=InputDocumentation(doc="consensus FASTA file used in XMFA")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="File with sequences to map. First line:\nc<TAB>dest_seq[,dest_seq2,...] or\nsource_seq[,source_seq2]<TAB>c. All following lines\nwill be ignored.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for mapping all positions.\nUsing all available threads if not specified.\n")), ToolInput(tag="in_seq_seq_pando_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_map_all", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="path to output directory")), ToolOutput(tag="out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name", type_hint=File()), doc=OutputDocumentation(doc="File prefix and sequence header for output FASTA /\nXFMA file"))], container="quay.io/biocontainers/seq-seq-pan:1.1.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Mapall_V0_1_0().translate("wdl")

