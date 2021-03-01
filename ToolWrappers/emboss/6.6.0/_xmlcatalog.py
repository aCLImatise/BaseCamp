from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Xmlcatalog_V0_1_0 = CommandToolBuilder(tool="_xmlcatalog", base_command=["_xmlcatalog"], inputs=[ToolInput(tag="in_sgml", input_type=Boolean(optional=True), prefix="--sgml", doc=InputDocumentation(doc=": handle SGML Super catalogs for --add and --del")), ToolInput(tag="in_shell", input_type=Boolean(optional=True), prefix="--shell", doc=InputDocumentation(doc=": run a shell allowing interactive queries")), ToolInput(tag="in_create", input_type=Boolean(optional=True), prefix="--create", doc=InputDocumentation(doc=": create a new catalog")), ToolInput(tag="in_del", input_type=Boolean(optional=True), prefix="--del", doc=InputDocumentation(doc="'values' : remove values")), ToolInput(tag="in_no_out", input_type=Boolean(optional=True), prefix="--noout", doc=InputDocumentation(doc=": avoid dumping the result on stdout\nused with --add or --del, it saves the catalog changes\nand with --sgml it automatically updates the super catalog")), ToolInput(tag="in_no_super_update", input_type=Boolean(optional=True), prefix="--no-super-update", doc=InputDocumentation(doc=": do not update the SGML super catalog")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=": provide debug informations"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Xmlcatalog_V0_1_0().translate("wdl", allow_empty_container=True)

