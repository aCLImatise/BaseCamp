from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Fio_Cat_V0_1_0 = CommandToolBuilder(tool="fio_cat", base_command=["fio", "cat"], inputs=[ToolInput(tag="in_layer", input_type=File(optional=True), prefix="--layer", doc=InputDocumentation(doc="Input layer(s), specified as\n'fileindex:layer` For example, '1:foo,2:bar'\nwill concatenate layer foo from file 1 and\nlayer bar from file 2")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Decimal precision of coordinates.")), ToolInput(tag="in_indent", input_type=Int(optional=True), prefix="--indent", doc=InputDocumentation(doc="Indentation level for JSON output")), ToolInput(tag="in_not_compact", input_type=Boolean(optional=True), prefix="--not-compact", doc=InputDocumentation(doc="Use compact separators (',', ':').")), ToolInput(tag="in_no_ignore_errors", input_type=Boolean(optional=True), prefix="--no-ignore-errors", doc=InputDocumentation(doc="log errors but do not stop serialization.")), ToolInput(tag="in_dst_crs", input_type=String(optional=True), prefix="--dst-crs", doc=InputDocumentation(doc="Destination CRS.")), ToolInput(tag="in_no_rs", input_type=Boolean(optional=True), prefix="--no-rs", doc=InputDocumentation(doc="Use RS (0x1E) as a prefix for individual\ntexts in a sequence as per\nhttp://tools.ietf.org/html/draft-ietf-json-\ntext-sequence-13 (default is False).")), ToolInput(tag="in_bbox", input_type=String(optional=True), prefix="--bbox", doc=InputDocumentation(doc=",s,e,n                  filter for features intersecting a bounding")), ToolInput(tag="in_box", input_type=String(), position=0, doc=InputDocumentation(doc="--help                          Show this message and exit."))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Cat_V0_1_0().translate("wdl")

