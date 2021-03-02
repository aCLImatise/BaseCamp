from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fio_Env_V0_1_0 = CommandToolBuilder(tool="fio_env", base_command=["fio", "env"], inputs=[ToolInput(tag="in_formats", input_type=Boolean(optional=True), prefix="--formats", doc=InputDocumentation(doc="Enumerate the available formats.")), ToolInput(tag="in_credentials", input_type=Boolean(optional=True), prefix="--credentials", doc=InputDocumentation(doc="Print credentials.")), ToolInput(tag="in_gdal_data", input_type=Boolean(optional=True), prefix="--gdal-data", doc=InputDocumentation(doc="Print GDAL data path.")), ToolInput(tag="in_proj_data", input_type=Boolean(optional=True), prefix="--proj-data", doc=InputDocumentation(doc="Print PROJ data path."))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Env_V0_1_0().translate("wdl")

