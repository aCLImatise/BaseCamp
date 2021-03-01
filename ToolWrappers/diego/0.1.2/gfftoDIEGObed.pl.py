from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gfftodiegobed_Pl_V0_1_0 = CommandToolBuilder(tool="gfftoDIEGObed.pl", base_command=["gfftoDIEGObed.pl"], inputs=[ToolInput(tag="in_gff_file_eg", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="gff file e.g. from ENSMBL")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name (default:annotation_DIEGO.bed)")), ToolInput(tag="in_what_used_gene", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="what is used as genes (default: gene)")), ToolInput(tag="in_help_message", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help message"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name (default:annotation_DIEGO.bed)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfftodiegobed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

