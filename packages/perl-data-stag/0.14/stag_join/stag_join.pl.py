from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Stag_Join_Pl_V0_1_0 = CommandToolBuilder(tool="stag_join.pl", base_command=["stag-join.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\nxml assumed as default")), ToolInput(tag="in_writer_formatformat_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="ARGUMENTS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Join_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

