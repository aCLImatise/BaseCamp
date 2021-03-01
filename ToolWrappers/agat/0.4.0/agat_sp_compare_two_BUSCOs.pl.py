from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory, String

Agat_Sp_Compare_Two_Buscos_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_compare_two_BUSCOs.pl", base_command=["agat_sp_compare_two_BUSCOs.pl"], inputs=[ToolInput(tag="in_fone", input_type=Boolean(optional=True), prefix="--f1", doc=InputDocumentation(doc="STRING: Input busco folder1")), ToolInput(tag="in_f_two", input_type=Boolean(optional=True), prefix="--f2", doc=InputDocumentation(doc="STRING: Input busco folder2")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Integer: For displaying extra information use -v 1. For\nactivating the verbosity in the omniscient parser use -v 66.\n(not recommended)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output folder.")), ToolInput(tag="in_agat_sp_compare_two_bus_cos_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output folder."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Compare_Two_Buscos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

