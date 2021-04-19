from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Libraries_Get_Libraries_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_get_libraries", base_command=["parsec", "libraries", "get_libraries"], inputs=[ToolInput(tag="in_library_id", input_type=String(optional=True), prefix="--library_id", doc=InputDocumentation(doc="filter for library by library id")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="If ``name`` is set and multiple names match the given\nname, all the libraries matching the argument will be\nreturned")), ToolInput(tag="in_deleted", input_type=Boolean(optional=True), prefix="--deleted", doc=InputDocumentation(doc="If ``False`` (the default), return only non-deleted\nlibraries. If ``True``, return only deleted libraries. If\n``None``, return both deleted and non-deleted libraries.")), ToolInput(tag="in_both_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Output:\nlist of dicts each containing basic information about a library"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Get_Libraries_V0_1_0().translate("wdl")

