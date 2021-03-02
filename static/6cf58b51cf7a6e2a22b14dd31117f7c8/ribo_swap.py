from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Ribo_Swap_V0_1_0 = CommandToolBuilder(tool="ribo_swap", base_command=["ribo", "swap"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory; default: /")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2")), ToolInput(tag="in_de_novo_file", input_type=String(), position=0, doc=InputDocumentation(doc="multifasta containing de novo contigs")), ToolInput(tag="in_de_fere_novo_file", input_type=String(), position=1, doc=InputDocumentation(doc="multifasta containing de fere novo contigs")), ToolInput(tag="in_bad_contig", input_type=String(), position=2, doc=InputDocumentation(doc="name of the bad contig")), ToolInput(tag="in_good_contigs", input_type=String(), position=3, doc=InputDocumentation(doc="colon separated good contigs for replacement"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: /")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Swap_V0_1_0().translate("wdl", allow_empty_container=True)

