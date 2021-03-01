from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gdtools_Vcf2Gd_V0_1_0 = CommandToolBuilder(tool="gdtools_VCF2GD", base_command=["gdtools", "VCF2GD"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="name of output Genome Diff file (DEFAULT=output.gd)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="name of output Genome Diff file (DEFAULT=output.gd)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Vcf2Gd_V0_1_0().translate("wdl", allow_empty_container=True)

