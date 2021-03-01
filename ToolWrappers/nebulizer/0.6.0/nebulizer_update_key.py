from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nebulizer_Update_Key_V0_1_0 = CommandToolBuilder(tool="nebulizer_update_key", base_command=["nebulizer", "update_key"], inputs=[ToolInput(tag="in_new_url", input_type=String(optional=True), prefix="--new-url", doc=InputDocumentation(doc="specify new URL for Galaxy instance")), ToolInput(tag="in_new_api_key", input_type=String(optional=True), prefix="--new-api-key", doc=InputDocumentation(doc="specify new API key for Galaxy instance")), ToolInput(tag="in_fetch_api_key", input_type=Boolean(optional=True), prefix="--fetch-api-key", doc=InputDocumentation(doc="fetch new API key for Galaxy instance")), ToolInput(tag="in_alias", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Update_Key_V0_1_0().translate("wdl", allow_empty_container=True)

