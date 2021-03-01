from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Eagle_Meta_V0_1_0 = CommandToolBuilder(tool="eagle_meta", base_command=["eagle", "meta"], inputs=[ToolInput(tag="in_write_value_meta", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="write this value as meta information")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="--delete", doc=InputDocumentation(doc="delete the meta information")), ToolInput(tag="in_store_list", input_type=Boolean(optional=True), prefix="--storelist", doc=InputDocumentation(doc="[STORELIST]\na list containing key value pairs to store\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="the eagle-data-file")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="the name of the meta information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eagle_Meta_V0_1_0().translate("wdl", allow_empty_container=True)

