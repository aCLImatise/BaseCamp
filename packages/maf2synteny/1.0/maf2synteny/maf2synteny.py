from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Maf2Synteny_V0_1_0 = CommandToolBuilder(tool="maf2synteny", base_command=["maf2synteny"], inputs=[ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to the output directory [default = .]")), ToolInput(tag="in_path_file_custom", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="path to a file with custom simplification parameters [default = not set]")), ToolInput(tag="in_commaseparated_list_synteny", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="comma-separated list of synteny block scales [default = 5000]")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_file", input_type=String(), position=0, doc=InputDocumentation(doc="path to alignment file in maf or gff format"))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="path to the output directory [default = .]"))], container="quay.io/biocontainers/maf2synteny:1.0--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf2Synteny_V0_1_0().translate("wdl")

