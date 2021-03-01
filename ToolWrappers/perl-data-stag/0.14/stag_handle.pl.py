from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Stag_Handle_Pl_V0_1_0 = CommandToolBuilder(tool="stag_handle.pl", base_command=["stag-handle.pl"], inputs=[ToolInput(tag="in_module", input_type=Boolean(optional=True), prefix="-module", doc=InputDocumentation(doc="|m PERLMODULE\nA module that is used to transform the input events the module\nshould inherit from Data::Stag::BaseHandler")), ToolInput(tag="in_unit", input_type=Boolean(optional=True), prefix="-unit", doc=InputDocumentation(doc="|u NODE_NAME\n(you should always use this option if you specify -m)\nthis is the unit that gets passed to the handler/transformer. this\nwill get set automatically if you use the the -c, -s or -t options\nmultiple units can be set\n-u foo -u bar -u boz")), ToolInput(tag="in_writer", input_type=Boolean(optional=True), prefix="-writer", doc=InputDocumentation(doc="|w WRITER\nwriter for final transformed tree; can be xml, sxpr or itext")), ToolInput(tag="in_code_file", input_type=Boolean(optional=True), prefix="-codefile", doc=InputDocumentation(doc="|c FILE\na file containing a perlhashref containing event handlers - see\nbelow")), ToolInput(tag="in_sub", input_type=Boolean(optional=True), prefix="-sub", doc=InputDocumentation(doc="|s PERL\na perl hashref containing handlers")), ToolInput(tag="in_trap", input_type=Boolean(optional=True), prefix="-trap", doc=InputDocumentation(doc="|t ELEMENT=SUB"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Handle_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

