from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ecotaxstat_V0_1_0 = CommandToolBuilder(tool="ecotaxstat", base_command=["ecotaxstat"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_eco_pcr_db", input_type=File(optional=True), prefix="--ecopcrdb", doc=InputDocumentation(doc="ecoPCR Database name")), ToolInput(tag="in_required", input_type=String(optional=True), prefix="--required", doc=InputDocumentation(doc="required taxid\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecotaxstat_V0_1_0().translate("wdl", allow_empty_container=True)

