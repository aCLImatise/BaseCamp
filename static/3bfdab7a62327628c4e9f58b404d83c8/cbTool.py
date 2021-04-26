from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Cbtool_V0_1_0 = CommandToolBuilder(tool="cbTool", base_command=["cbTool"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_fix_dots", input_type=Boolean(optional=True), prefix="--fixDots", doc=InputDocumentation(doc="for reorder and metaCat: try to fix R's mangling of various\nspecial chars to '.' in the cell IDs")), ToolInput(tag="in_order", input_type=File(optional=True), prefix="--order", doc=InputDocumentation(doc="only for reorder and metaCat: new order of fields, comma-\nsep, e.g. 'disease,age'. Do not include cellId, it's always\nthe first field by definition. Fields that are in the file\nbut not specified here will be appended as the last\ncolumns.")), ToolInput(tag="in_del", input_type=String(optional=True), prefix="--del", doc=InputDocumentation(doc="only for reorder and metaCat: names of fields to remove")), ToolInput(tag="in_mtx_two_tsv", input_type=Int(), position=0, doc=InputDocumentation(doc="- convert matrix market to .tsv.gz"))], outputs=[], container="quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbtool_V0_1_0().translate("wdl")

