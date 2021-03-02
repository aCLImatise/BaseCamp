from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Get_Loci_From_Gb_Pl_V0_1_0 = CommandToolBuilder(tool="get_loci_from_gb.pl", base_command=["get_loci_from_gb.pl"], inputs=[ToolInput(tag="in_gb", input_type=File(optional=True), prefix="--gb", doc=InputDocumentation(doc="file with gene structures in genbank format")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="tabulator separated output file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="tabulator separated output file"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Loci_From_Gb_Pl_V0_1_0().translate("wdl")

