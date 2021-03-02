from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Msdiff_V0_1_0 = CommandToolBuilder(tool="msdiff", base_command=["msdiff"], inputs=[ToolInput(tag="in_arg__set", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --precision ] arg (=9.9999999999999995e-07)\n: set floating point precision for\ncomparing binary data")), ToolInput(tag="in_ignore_metadata_compare", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --ignore ]                       : ignore metadata (compare scan binary\ndata and important scan metadata only)")), ToolInput(tag="in_filename_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msdiff_V0_1_0().translate("wdl")

