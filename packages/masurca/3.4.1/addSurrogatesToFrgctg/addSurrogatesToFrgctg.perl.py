from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Addsurrogatestofrgctg_Perl_V0_1_0 = CommandToolBuilder(tool="addSurrogatesToFrgctg.perl", base_command=["addSurrogatesToFrgctg.perl"], inputs=[ToolInput(tag="in_help_dot_asm", input_type=String(optional=True), prefix="--help.asm", doc=InputDocumentation(doc="'t exist!")), ToolInput(tag="in_help_dot_pos_map_do_tut_glen", input_type=String(optional=True), prefix="--help.posmap.utglen", doc=InputDocumentation(doc="'t exist!")), ToolInput(tag="in_help_dotposmapdotfrgutg", input_type=String(optional=True), prefix="--help.posmap.frgutg", doc=InputDocumentation(doc="'t exist!")), ToolInput(tag="in_help_dotposmapdotutgctg", input_type=String(optional=True), prefix="--help.posmap.utgctg", doc=InputDocumentation(doc="'t exist!")), ToolInput(tag="in_help_dotposmapdotfrgctg", input_type=String(optional=True), prefix="--help.posmap.frgctg", doc=InputDocumentation(doc="'t exist!"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addsurrogatestofrgctg_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

