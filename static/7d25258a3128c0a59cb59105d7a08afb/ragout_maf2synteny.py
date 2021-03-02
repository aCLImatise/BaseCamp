from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Ragout_Maf2Synteny_V0_1_0 = CommandToolBuilder(tool="ragout_maf2synteny", base_command=["ragout-maf2synteny"], inputs=[ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to the output directory [default = .]")), ToolInput(tag="in_path_file_custom", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="path to a file with custom simplification parameters [default = not set]")), ToolInput(tag="in_commaseparated_list_synteny", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="comma-separated list of synteny block scales [default = 5000]")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=0, doc=InputDocumentation(doc="path to maf file"))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="path to the output directory [default = .]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragout_Maf2Synteny_V0_1_0().translate("wdl", allow_empty_container=True)

