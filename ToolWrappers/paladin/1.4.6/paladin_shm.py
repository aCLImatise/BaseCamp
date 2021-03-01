from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Paladin_Shm_V0_1_0 = CommandToolBuilder(tool="paladin_shm", base_command=["paladin", "shm"], inputs=[ToolInput(tag="in_destroy_indices_shared", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="destroy all indices in shared memory")), ToolInput(tag="in_list_names_indices", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list names of indices in shared memory")), ToolInput(tag="in_temporary_file_reduce", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="temporary file to reduce peak memory")), ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_shm", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paladin_Shm_V0_1_0().translate("wdl", allow_empty_container=True)

