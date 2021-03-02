from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fio_Bounds_V0_1_0 = CommandToolBuilder(tool="fio_bounds", base_command=["fio", "bounds"], inputs=[ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Decimal precision of coordinates.")), ToolInput(tag="in_no_explode", input_type=Boolean(optional=True), prefix="--no-explode", doc=InputDocumentation(doc="Explode collections into features (default: no).")), ToolInput(tag="in_without_id", input_type=Boolean(optional=True), prefix="--without-id", doc=InputDocumentation(doc="Print GeoJSON ids and bounding boxes together\n(default: without).")), ToolInput(tag="in_without_obj", input_type=Boolean(optional=True), prefix="--without-obj", doc=InputDocumentation(doc="Print GeoJSON objects and bounding boxes\ntogether (default: without).")), ToolInput(tag="in_no_rs", input_type=Boolean(optional=True), prefix="--no-rs", doc=InputDocumentation(doc="Use RS (0x1E) as a prefix for individual texts\nin a sequence as per\nhttp://tools.ietf.org/html/draft-ietf-json-text-\nsequence-13 (default is False)."))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Bounds_V0_1_0().translate("wdl")

