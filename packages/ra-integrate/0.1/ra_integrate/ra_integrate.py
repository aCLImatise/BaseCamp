from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ra_Integrate_V0_1_0 = CommandToolBuilder(tool="ra_integrate", base_command=["ra-integrate"], inputs=[ToolInput(tag="in_spec", input_type=File(optional=True), prefix="--spec", doc=InputDocumentation(doc="Set given spec file")), ToolInput(tag="in_directory", input_type=File(optional=True), prefix="--directory", doc=InputDocumentation(doc="Set given dirpath as working directory")), ToolInput(tag="in_overlaps", input_type=File(optional=True), prefix="--overlaps", doc=InputDocumentation(doc="Skip overlap phase and use overlaps from given file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ra_Integrate_V0_1_0().translate("wdl", allow_empty_container=True)

