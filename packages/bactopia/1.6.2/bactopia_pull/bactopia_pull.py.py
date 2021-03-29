from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int, Boolean

Bactopia_Pull_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_pull.py", base_command=["bactopia-pull.py"], inputs=[ToolInput(tag="in_env_name", input_type=String(optional=True), prefix="--envname", doc=InputDocumentation(doc="Build Singularity images with the given name")), ToolInput(tag="in_singularity_cache", input_type=Directory(optional=True), prefix="--singularity_cache", doc=InputDocumentation(doc="Directory where Singularity images will be stored.")), ToolInput(tag="in_registry", input_type=String(optional=True), prefix="--registry", doc=InputDocumentation(doc="Docker registry to pull containers from")), ToolInput(tag="in_max_retry", input_type=Int(optional=True), prefix="--max_retry", doc=InputDocumentation(doc="Maximum times to attempt creating Conda environment.\n(Default: 5)")), ToolInput(tag="in_include_tools", input_type=Boolean(optional=True), prefix="--include_tools", doc=InputDocumentation(doc="Singularity images for Bactopia Tools will also be")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing Conda environments.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print debug related text.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Only critical errors will be printed.")), ToolInput(tag="in_built_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--default             Builds Singularity images to the default Bactopia")), ToolInput(tag="in_location_dot", input_type=String(), position=1, doc=InputDocumentation(doc="--is_bactopia         This is an automated call by bactopia not a user"))], outputs=[], container="quay.io/biocontainers/bactopia:1.6.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Pull_Py_V0_1_0().translate("wdl")

