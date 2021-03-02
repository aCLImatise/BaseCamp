from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Pbutgcns_V0_1_0 = CommandToolBuilder(tool="pbutgcns", base_command=["pbutgcns"], inputs=[ToolInput(tag="in_increase_logging_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]      Increase logging verbosity")), ToolInput(tag="in_arg_number_use", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --threads ] arg  Number of consensus threads to use")), ToolInput(tag="in_unitig_input_file", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Unitig input file")), ToolInput(tag="in_var_3", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbutgcns_V0_1_0().translate("wdl", allow_empty_container=True)

