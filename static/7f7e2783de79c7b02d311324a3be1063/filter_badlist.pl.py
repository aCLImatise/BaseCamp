from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filter_Badlist_Pl_V0_1_0 = CommandToolBuilder(tool="filter_badlist.pl", base_command=["filter_badlist.pl"], inputs=[ToolInput(tag="in_flag_fix_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Flag to fix the file.")), ToolInput(tag="in_output_genes_are", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Output those genes that are in the list.")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Badlist_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

