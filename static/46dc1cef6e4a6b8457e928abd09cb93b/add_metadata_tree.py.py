from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String

Add_Metadata_Tree_Py_V0_1_0 = CommandToolBuilder(tool="add_metadata_tree.py", base_command=["add_metadata_tree.py"], inputs=[ToolInput(tag="in_string_to_remove", input_type=Array(t=String(), optional=True), prefix="--string_to_remove", doc=InputDocumentation(doc="string to be removed in the tree node names")), ToolInput(tag="in_metadata_s", input_type=Array(t=String(), optional=True), prefix="--metadatas", doc=InputDocumentation(doc="The metadata fields that you want to add. Default: add\nall metadata from the first line.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Metadata_Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

