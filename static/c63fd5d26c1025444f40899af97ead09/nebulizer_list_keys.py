from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_List_Keys_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_keys", base_command=["nebulizer", "list_keys"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="list only aliases matching name. Can include glob-style")), ToolInput(tag="in_wild_cards_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-s, --show-api-keys  show the API key string associated with each alias"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Keys_V0_1_0().translate("wdl", allow_empty_container=True)

