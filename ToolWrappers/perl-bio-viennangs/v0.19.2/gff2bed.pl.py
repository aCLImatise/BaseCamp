from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gff2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="gff2bed.pl", base_command=["gff2bed.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GFF file.")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="--feature", doc=InputDocumentation(doc="Specify feature type (eg. CDS,tRNA,rRNA,SBS, etc) to be extracted\nfrom GFF3.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output path.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output path."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

