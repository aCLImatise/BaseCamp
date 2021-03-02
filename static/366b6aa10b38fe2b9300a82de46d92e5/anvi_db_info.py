from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Anvi_Db_Info_V0_1_0 = CommandToolBuilder(tool="anvi_db_info", base_command=["anvi-db-info"], inputs=[ToolInput(tag="in_self_key", input_type=String(optional=True), prefix="--self-key", doc=InputDocumentation(doc="The key you wish to set or change.")), ToolInput(tag="in_self_value", input_type=String(optional=True), prefix="--self-value", doc=InputDocumentation(doc="The value you wish to set for the self key.")), ToolInput(tag="in_just_do_it", input_type=Boolean(optional=True), prefix="--just-do-it", doc=InputDocumentation(doc="Don't bother me with questions or warnings, just do\nit.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Db_Info_V0_1_0().translate("wdl", allow_empty_container=True)

