from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Fio_Dump_V0_1_0 = CommandToolBuilder(tool="fio_dump", base_command=["fio", "dump"], inputs=[ToolInput(tag="in_layer", input_type=String(optional=True), prefix="--layer", doc=InputDocumentation(doc="|NAME              Print information about a specific layer.\nThe first layer is used by default.  Layers\nuse zero-based numbering when accessed by\nindex.")), ToolInput(tag="in_encoding", input_type=File(optional=True), prefix="--encoding", doc=InputDocumentation(doc="Specify encoding of the input file.")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Decimal precision of coordinates.")), ToolInput(tag="in_indent", input_type=Int(optional=True), prefix="--indent", doc=InputDocumentation(doc="Indentation level for JSON output")), ToolInput(tag="in_not_compact", input_type=Boolean(optional=True), prefix="--not-compact", doc=InputDocumentation(doc="Use compact separators (',', ':').")), ToolInput(tag="in_no_record_buffered", input_type=Boolean(optional=True), prefix="--no-record-buffered", doc=InputDocumentation(doc="Economical buffering of writes at record,\nnot collection (default), level.")), ToolInput(tag="in_no_ignore_errors", input_type=Boolean(optional=True), prefix="--no-ignore-errors", doc=InputDocumentation(doc="log errors but do not stop serialization.")), ToolInput(tag="in_without_ld_context", input_type=Boolean(optional=True), prefix="--without-ld-context", doc=InputDocumentation(doc="add a JSON-LD context to JSON output.")), ToolInput(tag="in_add_ld_context_item", input_type=String(optional=True), prefix="--add-ld-context-item", doc=InputDocumentation(doc="map a term to a URI and add it to the\noutput's JSON LD context.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Dump_V0_1_0().translate("wdl")

