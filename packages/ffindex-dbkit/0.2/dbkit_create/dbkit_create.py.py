from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Dbkit_Create_Py_V0_1_0 = CommandToolBuilder(tool="dbkit_create.py", base_command=["dbkit_create.py"], inputs=[ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc="List of entries")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Source Url")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to files")), ToolInput(tag="in_id_length", input_type=Int(optional=True), prefix="--idlength", doc=InputDocumentation(doc="Format Identifier Length (integer)")), ToolInput(tag="in_id_case", input_type=String(optional=True), prefix="--idcase", doc=InputDocumentation(doc="Format Identifier Case (lower, upper)")), ToolInput(tag="in_id_extension", input_type=String(optional=True), prefix="--idextension", doc=InputDocumentation(doc="Format Identifier Suffix")), ToolInput(tag="in_id_prefix", input_type=String(optional=True), prefix="--idprefix", doc=InputDocumentation(doc="Format Identifier Prefix")), ToolInput(tag="in_index", input_type=String(optional=True), prefix="--index", doc=InputDocumentation(doc="Output Database Index")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="Output Database")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file"))], outputs=[], container="quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbkit_Create_Py_V0_1_0().translate("wdl")

