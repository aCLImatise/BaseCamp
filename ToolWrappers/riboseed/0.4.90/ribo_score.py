from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Boolean, File

Ribo_Score_V0_1_0 = CommandToolBuilder(tool="ribo_score", base_command=["ribo", "score"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="directory in which to place the output files")), ToolInput(tag="in_flanking_length", input_type=Int(optional=True), prefix="--flanking_length", doc=InputDocumentation(doc="length of flanking regions, in bp; default: 1000")), ToolInput(tag="in_min_percent", input_type=Int(optional=True), prefix="--min_percent", doc=InputDocumentation(doc="minimum percent identity")), ToolInput(tag="in_assembly_ext", input_type=String(optional=True), prefix="--assembly_ext", doc=InputDocumentation(doc="extenssion of reference, usually fasta")), ToolInput(tag="in_ref_ext", input_type=String(optional=True), prefix="--ref_ext", doc=InputDocumentation(doc="extension of reference, usually .gb")), ToolInput(tag="in_blast_full", input_type=Boolean(optional=True), prefix="--blast_Full", doc=InputDocumentation(doc="if true, blast full sequences along with just the\nflanking. Interpretation is not implemented currently\nas false positives cant be detected this way")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="directory in which to place the output files")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Score_V0_1_0().translate("wdl", allow_empty_container=True)

