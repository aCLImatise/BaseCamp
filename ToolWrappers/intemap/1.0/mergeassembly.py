from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Mergeassembly_V0_1_0 = CommandToolBuilder(tool="mergeassembly", base_command=["mergeassembly"], inputs=[ToolInput(tag="in_subject_contig_name", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Subject Contig name")), ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file prefix")), ToolInput(tag="in_query_contig_name", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Query Contig name")), ToolInput(tag="in_minidentiy", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="minIdentiy")), ToolInput(tag="in_stringent_rankrank_stringent", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="stringent rank[0]\nrank: 0 highest stringent; 1 low stringent\n")), ToolInput(tag="in_option_one", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_value_one", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output file prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergeassembly_V0_1_0().translate("wdl", allow_empty_container=True)

