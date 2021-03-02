from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hailctl_Batch_List_V0_1_0 = CommandToolBuilder(tool="hailctl_batch_list", base_command=["hailctl", "batch", "list"], inputs=[ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="see docs at https://batch.hail.is/batches")), ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="number of batches to return (default 50)")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="list all batches (overrides --limit)")), ToolInput(tag="in_before", input_type=String(optional=True), prefix="--before", doc=InputDocumentation(doc="start listing before supplied id")), ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="when output is tabular, print more information")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="do not print a table header")), ToolInput(tag="in_specify_format_yaml", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="specify output format (json, yaml, csv, tsv, or any\ntabulate format)\n"))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Batch_List_V0_1_0().translate("wdl")

