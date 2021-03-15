from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Galaxy_Build_Objects_V0_1_0 = CommandToolBuilder(tool="galaxy_build_objects", base_command=["galaxy-build-objects"], inputs=[ToolInput(tag="in_object_store_config", input_type=File(optional=True), prefix="--object-store-config", doc=InputDocumentation(doc="object store configuration file")), ToolInput(tag="in_export", input_type=File(optional=True), prefix="--export", doc=InputDocumentation(doc="export path")), ToolInput(tag="in_export_type", input_type=String(optional=True), prefix="--export-type", doc=InputDocumentation(doc="export type (if needed)\n"))], outputs=[], container="quay.io/biocontainers/galaxy-data:20.9.1--py_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Galaxy_Build_Objects_V0_1_0().translate("wdl")

