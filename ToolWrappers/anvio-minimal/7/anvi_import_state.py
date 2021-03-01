from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Anvi_Import_State_V0_1_0 = CommandToolBuilder(tool="anvi_import_state", base_command=["anvi-import-state"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts). (default: None)")), ToolInput(tag="in_json_serializable_anvio", input_type=File(optional=True), prefix="--state", doc=InputDocumentation(doc="JSON serializable anvi'o state file. (default: None)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="State name. (default: None)")), ToolInput(tag="in__more_anviimportstate", input_type=String(), position=0, doc=InputDocumentation(doc="🍺 More on `anvi-import-state`:"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Import_State_V0_1_0().translate("wdl")

