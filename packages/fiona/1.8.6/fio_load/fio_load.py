from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fio_Load_V0_1_0 = CommandToolBuilder(tool="fio_load", base_command=["fio", "load"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Output format driver name.  [required]")), ToolInput(tag="in_src_crs", input_type=String(optional=True), prefix="--src-crs", doc=InputDocumentation(doc="Source CRS.")), ToolInput(tag="in_dst_crs", input_type=String(optional=True), prefix="--dst-crs", doc=InputDocumentation(doc="Destination CRS.  Defaults to --src-crs when\nnot given.")), ToolInput(tag="in_layer", input_type=String(optional=True), prefix="--layer", doc=InputDocumentation(doc="|NAME           Load features into specified layer.  Layers use\nzero-based numbering when accessed by index.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_features_dot_dot_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Load_V0_1_0().translate("wdl")

