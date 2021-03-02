from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Agat_Convert_Mfannot2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_mfannot2gff.pl", base_command=["agat_convert_mfannot2gff.pl"], inputs=[ToolInput(tag="in_m_fan_not", input_type=File(optional=True), prefix="--mfannot", doc=InputDocumentation(doc="The mfannot input file")), ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="the gff output file")), ToolInput(tag="in_gaas_convert_mfannottwogffdotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_gff", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gff", type_hint=File()), doc=OutputDocumentation(doc="the gff output file"))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Mfannot2Gff_Pl_V0_1_0().translate("wdl")

