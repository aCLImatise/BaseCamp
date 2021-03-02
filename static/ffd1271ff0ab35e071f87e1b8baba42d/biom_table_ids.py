from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Biom_Table_Ids_V0_1_0 = CommandToolBuilder(tool="biom_table_ids", base_command=["biom", "table-ids"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input BIOM table  [required]")), ToolInput(tag="in_observations", input_type=Boolean(optional=True), prefix="--observations", doc=InputDocumentation(doc="Grab observation IDs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Table_Ids_V0_1_0().translate("wdl", allow_empty_container=True)

