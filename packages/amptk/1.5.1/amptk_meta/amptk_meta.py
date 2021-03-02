from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Meta_V0_1_0 = CommandToolBuilder(tool="amptk_meta", base_command=["amptk", "meta"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Input OTU table")), ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Meta data table (csv format)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output (meta data + pivotted OTU table)")), ToolInput(tag="in_split_taxonomy", input_type=Boolean(optional=True), prefix="--split_taxonomy", doc=InputDocumentation(doc="Make separate tables for groups of taxonomy [k,p,c,o,f,g]")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Meta_V0_1_0().translate("wdl")

