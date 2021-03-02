from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Superfocus_Downloaddb_V0_1_0 = CommandToolBuilder(tool="superfocus_downloadDB", base_command=["superfocus_downloadDB"], inputs=[ToolInput(tag="in_aligner", input_type=String(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Aligner name separed by ',' if more than one")), ToolInput(tag="in_clusters", input_type=Int(optional=True), prefix="--clusters", doc=InputDocumentation(doc="DB types separed by ',' if more than one (e.g\n90,95,98,100) - default 90")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Target input files to be formatted into the database")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Superfocus_Downloaddb_V0_1_0().translate("wdl", allow_empty_container=True)

