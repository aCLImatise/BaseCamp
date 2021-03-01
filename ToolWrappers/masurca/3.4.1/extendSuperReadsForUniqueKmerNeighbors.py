from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Extendsuperreadsforuniquekmerneighbors_V0_1_0 = CommandToolBuilder(tool="extendSuperReadsForUniqueKmerNeighbors", base_command=["extendSuperReadsForUniqueKmerNeighbors"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="*Directory where the super-reads work is done")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extendsuperreadsforuniquekmerneighbors_V0_1_0().translate("wdl", allow_empty_container=True)

