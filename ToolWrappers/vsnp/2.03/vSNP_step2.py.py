from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory, File

Vsnp_Step2_Py_V0_1_0 = CommandToolBuilder(tool="vSNP_step2.py", base_command=["vSNP_step2.py"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="provide a valid reference, see -t output")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="see valid reference types available")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="create table with all isolates")), ToolInput(tag="in_subset", input_type=Boolean(optional=True), prefix="--subset", doc=InputDocumentation(doc="create trees with a subset of sample that represent\nthe whole")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="turn off map.pooling of samples")), ToolInput(tag="in_no_filters", input_type=Boolean(optional=True), prefix="--no_filters", doc=InputDocumentation(doc="run without applying filters")), ToolInput(tag="in_filter_finder", input_type=Boolean(optional=True), prefix="--filter_finder", doc=InputDocumentation(doc="write possible positions to filter to text file")), ToolInput(tag="in_cwd", input_type=Directory(optional=True), prefix="--cwd", doc=InputDocumentation(doc="Optional: path to VCF files")), ToolInput(tag="in_gbk", input_type=File(optional=True), prefix="--gbk", doc=InputDocumentation(doc="Optional: provide full path to gbk file")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Step2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

