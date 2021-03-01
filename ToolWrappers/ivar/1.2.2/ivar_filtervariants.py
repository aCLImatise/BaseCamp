from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ivar_Filtervariants_V0_1_0 = CommandToolBuilder(tool="ivar_filtervariants", base_command=["ivar", "filtervariants"], inputs=[ToolInput(tag="in_minimum_fration_files", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Minimum fration of files required to contain the same variant. Specify value within [0,1]. (Default: 1)")), ToolInput(tag="in_text_file_one", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="A text file with one variant file per line.")), ToolInput(tag="in_required_prefix_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="(Required) Prefix for the output filtered tsv file"))], outputs=[ToolOutput(tag="out_required_prefix_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_required_prefix_file", type_hint=File()), doc=OutputDocumentation(doc="(Required) Prefix for the output filtered tsv file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ivar_Filtervariants_V0_1_0().translate("wdl", allow_empty_container=True)

