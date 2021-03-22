from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pantools_V0_1_0 = CommandToolBuilder(tool="pantools", base_command=["pantools"], inputs=[ToolInput(tag="in_jar", input_type=File(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_jvm_options", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pantools:3.1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pantools_V0_1_0().translate("wdl")

