from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Poretools_Combine_V0_1_0 = CommandToolBuilder(tool="poretools_combine", base_command=["poretools", "combine"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_name_output_tar", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="The name of the output TAR archive for the set of FAST5 files.")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Combine_V0_1_0().translate("wdl", allow_empty_container=True)

