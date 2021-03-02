from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Stag_Findsubtree_Pl_V0_1_0 = CommandToolBuilder(tool="stag_findsubtree.pl", base_command=["stag-findsubtree.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\nxml assumed as default")), ToolInput(tag="in_writer_formatformat_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module")), ToolInput(tag="in_node", input_type=String(), position=0, doc=InputDocumentation(doc="the name of the node/element"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Findsubtree_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

