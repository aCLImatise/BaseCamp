from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Stag_Autoschema_Pl_V0_1_0 = CommandToolBuilder(tool="stag_autoschema.pl", base_command=["stag-autoschema.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\nxml assumed as default")), ToolInput(tag="in_dtd", input_type=Boolean(optional=True), prefix="-dtd", doc=InputDocumentation(doc="exports schema as DTD")), ToolInput(tag="in_writer_formatformat_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module,\nOR DTD\nThe default is sxpr\nnote that stag schemas exported as xml will be invalid xml, due to\nthe use of symbols *, +, ? in the node names"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Autoschema_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

