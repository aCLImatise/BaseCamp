from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fio_Collect_V0_1_0 = CommandToolBuilder(tool="fio_collect", base_command=["fio", "collect"], inputs=[ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Decimal precision of coordinates.")), ToolInput(tag="in_indent", input_type=Int(optional=True), prefix="--indent", doc=InputDocumentation(doc="Indentation level for JSON output")), ToolInput(tag="in_not_compact", input_type=Boolean(optional=True), prefix="--not-compact", doc=InputDocumentation(doc="Use compact separators (',', ':').")), ToolInput(tag="in_no_record_buffered", input_type=Boolean(optional=True), prefix="--no-record-buffered", doc=InputDocumentation(doc="Economical buffering of writes at record,\nnot collection (default), level.")), ToolInput(tag="in_no_ignore_errors", input_type=Boolean(optional=True), prefix="--no-ignore-errors", doc=InputDocumentation(doc="log errors but do not stop serialization.")), ToolInput(tag="in_src_crs", input_type=String(optional=True), prefix="--src-crs", doc=InputDocumentation(doc="Source CRS.")), ToolInput(tag="in_without_ld_context", input_type=Boolean(optional=True), prefix="--without-ld-context", doc=InputDocumentation(doc="add a JSON-LD context to JSON output.")), ToolInput(tag="in_add_ld_context_item", input_type=String(optional=True), prefix="--add-ld-context-item", doc=InputDocumentation(doc="map a term to a URI and add it to the\noutput's JSON LD context.")), ToolInput(tag="in_no_parse", input_type=Boolean(optional=True), prefix="--no-parse", doc=InputDocumentation(doc="load and dump the geojson feature (default\nis True)"))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Collect_V0_1_0().translate("wdl")

