from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pizzly_Flatten_Json_Py_V0_1_0 = CommandToolBuilder(tool="pizzly_flatten_json.py", base_command=["pizzly_flatten_json.py"], inputs=[ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_flatten_json_do_tpy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fusion_dot_out_dot_json", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_table_dot_txt", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pizzly_Flatten_Json_Py_V0_1_0().translate("wdl", allow_empty_container=True)

