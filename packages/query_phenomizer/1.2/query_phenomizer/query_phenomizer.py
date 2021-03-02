from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Query_Phenomizer_V0_1_0 = CommandToolBuilder(tool="query_phenomizer", base_command=["query_phenomizer"], inputs=[ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="A username for phenomizer")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="A password for phenomizer")), ToolInput(tag="in_check_terms", input_type=Boolean(optional=True), prefix="--check-terms", doc=InputDocumentation(doc="Check if the term(s) exist")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify the path to a file for storing the phenomizer")), ToolInput(tag="in_to_json", input_type=Boolean(optional=True), prefix="--to-json", doc=InputDocumentation(doc="If result should be printed to json format")), ToolInput(tag="in_output_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--p-value-limit FLOAT  Specify the highest p-value that you want included."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Query_Phenomizer_V0_1_0().translate("wdl", allow_empty_container=True)

