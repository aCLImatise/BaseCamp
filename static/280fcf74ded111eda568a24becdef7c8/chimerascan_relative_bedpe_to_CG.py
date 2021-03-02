from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Chimerascan_Relative_Bedpe_To_Cg_V0_1_0 = CommandToolBuilder(tool="chimerascan_relative_bedpe_to_CG", base_command=["chimerascan-relative-bedpe-to-CG"], inputs=[ToolInput(tag="in_gene_annotation", input_type=File(optional=True), prefix="--gene-annotation", doc=InputDocumentation(doc="gene_features.txt file used by chimersacan")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename; '-' for stdout\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chimerascan_Relative_Bedpe_To_Cg_V0_1_0().translate("wdl", allow_empty_container=True)

