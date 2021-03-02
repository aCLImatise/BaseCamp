from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory

Iu_Gen_Configs_V0_1_0 = CommandToolBuilder(tool="iu_gen_configs", base_command=["iu-gen-configs"], inputs=[ToolInput(tag="in_r_one_prefix", input_type=Int(optional=True), prefix="--r1-prefix", doc=InputDocumentation(doc="Prefix for Read 1 to be put in every config file.")), ToolInput(tag="in_r_two_prefix", input_type=Int(optional=True), prefix="--r2-prefix", doc=InputDocumentation(doc="Prefix for Read 2.")), ToolInput(tag="in_e_mail", input_type=String(optional=True), prefix="--e-mail", doc=InputDocumentation(doc="E-mail address (currently is not used for anything)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory for output storage. INI files will also be\ngenerated in this directory.\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory for output storage. INI files will also be\ngenerated in this directory.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Gen_Configs_V0_1_0().translate("wdl", allow_empty_container=True)

