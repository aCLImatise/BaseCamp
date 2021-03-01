from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Kodoja_Retrieve_Py_V0_1_0 = CommandToolBuilder(tool="kodoja_retrieve.py", base_command=["kodoja_retrieve.py"], inputs=[ToolInput(tag="in_file_dir", input_type=File(optional=True), prefix="--file_dir", doc=InputDocumentation(doc="Path to directory of kodoja_search results, required")), ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--read1", doc=InputDocumentation(doc="Read 1 file path, required")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--read2", doc=InputDocumentation(doc="Read 2 file path, default: False")), ToolInput(tag="in_user_format", input_type=String(optional=True), prefix="--user_format", doc=InputDocumentation(doc="Sequence data format, default: fastq")), ToolInput(tag="in_taxid", input_type=String(optional=True), prefix="--taxID", doc=InputDocumentation(doc="Virus tax ID for subsetting, default: All viral\nsequences")), ToolInput(tag="in_genus", input_type=Boolean(optional=True), prefix="--genus", doc=InputDocumentation(doc="Include sequences classified at genus")), ToolInput(tag="in_stringent", input_type=Boolean(optional=True), prefix="--stringent", doc=InputDocumentation(doc="Only subset sequences identified by both tools"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kodoja_Retrieve_Py_V0_1_0().translate("wdl", allow_empty_container=True)

