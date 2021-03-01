from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Dbsplit_V0_1_0 = CommandToolBuilder(tool="DBsplit", base_command=["DBsplit"], inputs=[ToolInput(tag="in_target_size_blocks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": Target size of blocks (in Mbp).")), ToolInput(tag="in_trimmed_db_reads", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": Trimmed DB has reads >= this threshold.")), ToolInput(tag="in_trimmed_db_contains", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": Trimmed DB contains all reads from a well (not just longest).")), ToolInput(tag="in_force_split_occur", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Force the split to occur even if already split.")), ToolInput(tag="in_af", input_type=Boolean(optional=True), prefix="-af", doc=InputDocumentation(doc="")), ToolInput(tag="in_int", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbsplit_V0_1_0().translate("wdl", allow_empty_container=True)

