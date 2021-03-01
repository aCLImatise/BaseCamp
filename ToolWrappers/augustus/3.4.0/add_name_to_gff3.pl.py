from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Add_Name_To_Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="add_name_to_gff3.pl", base_command=["add_name_to_gff3.pl"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="gff3 output file")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="print only the features gene, mRNA, CDS and exon")), ToolInput(tag="in_evidence_modeler", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="gff3 output file"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Name_To_Gff3_Pl_V0_1_0().translate("wdl")

