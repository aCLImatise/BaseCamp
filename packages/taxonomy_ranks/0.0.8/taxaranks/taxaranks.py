from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Taxaranks_V0_1_0 = CommandToolBuilder(tool="taxaranks", base_command=["taxaranks"], inputs=[ToolInput(tag="in_file_be_list", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="A file can be a list of ncbi taxa id or species names (or higher\nranks, e.g. Family, Order), or a mixture of them.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="outfile")), ToolInput(tag="in_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxaranks_V0_1_0().translate("wdl", allow_empty_container=True)

