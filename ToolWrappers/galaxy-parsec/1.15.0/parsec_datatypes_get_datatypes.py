from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Parsec_Datatypes_Get_Datatypes_V0_1_0 = CommandToolBuilder(tool="parsec_datatypes_get_datatypes", base_command=["parsec", "datatypes", "get_datatypes"], inputs=[ToolInput(tag="in_extension_only", input_type=Boolean(optional=True), prefix="--extension_only", doc=InputDocumentation(doc="Return only the extension rather than the datatype name")), ToolInput(tag="in_upload_only", input_type=Boolean(optional=True), prefix="--upload_only", doc=InputDocumentation(doc="Whether to return only datatypes which can be uploaded"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Datatypes_Get_Datatypes_V0_1_0().translate("wdl")

