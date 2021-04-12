from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Add_Descriptions_Py_V0_1_0 = CommandToolBuilder(tool="add_descriptions.py", base_command=["add_descriptions.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input function abundance table.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output function abundance table with added description\ncolumn. If the extension '.gz' is added the table will\nautomatically be gzipped.")), ToolInput(tag="in_map_type", input_type=String(optional=True), prefix="--map_type", doc=InputDocumentation(doc="Specifies which default mapping table should be used.\nUse the --custom_map_table option to input a non-\ndefault mapping table.")), ToolInput(tag="in_custom_map_table", input_type=File(optional=True), prefix="--custom_map_table", doc=InputDocumentation(doc="An input map table linking function ids to\ndescriptions for each function."))], outputs=[], container="quay.io/biocontainers/picrust2:2.4.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Descriptions_Py_V0_1_0().translate("wdl")

