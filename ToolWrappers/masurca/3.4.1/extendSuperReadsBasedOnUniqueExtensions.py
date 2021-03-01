from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Extendsuperreadsbasedonuniqueextensions_V0_1_0 = CommandToolBuilder(tool="extendSuperReadsBasedOnUniqueExtensions", base_command=["extendSuperReadsBasedOnUniqueExtensions"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="*Directory where the super-reads work is done")), ToolInput(tag="in_mer", input_type=Int(optional=True), prefix="--mer", doc=InputDocumentation(doc="*Length of mer")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extendsuperreadsbasedonuniqueextensions_V0_1_0().translate("wdl", allow_empty_container=True)

