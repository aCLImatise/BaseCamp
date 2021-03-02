from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Capc_Map_Genomedigest_V0_1_0 = CommandToolBuilder(tool="capC_MAP_genomedigest", base_command=["capC-MAP", "genomedigest"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input fasta file of geneome")), ToolInput(tag="in_name_supported_enzyme", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="name of supported enzyme, or cutting sequence")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output bed file of restriction fragments"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="output bed file of restriction fragments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capc_Map_Genomedigest_V0_1_0().translate("wdl", allow_empty_container=True)

