from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Fio_Info_V0_1_0 = CommandToolBuilder(tool="fio_info", base_command=["fio", "info"], inputs=[ToolInput(tag="in_layer", input_type=String(optional=True), prefix="--layer", doc=InputDocumentation(doc="|NAME      Print information about a specific layer.  The first\nlayer is used by default.  Layers use zero-based\nnumbering when accessed by index.")), ToolInput(tag="in_indent", input_type=Int(optional=True), prefix="--indent", doc=InputDocumentation(doc="Indentation level for JSON output")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="Print the count of features.")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Print the format driver.")), ToolInput(tag="in_crs", input_type=Boolean(optional=True), prefix="--crs", doc=InputDocumentation(doc="Print the CRS as a PROJ.4 string.")), ToolInput(tag="in_bounds", input_type=Boolean(optional=True), prefix="--bounds", doc=InputDocumentation(doc="Print the boundary coordinates (left, bottom, right,\ntop).")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Print the datasource's name.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Info_V0_1_0().translate("wdl")

