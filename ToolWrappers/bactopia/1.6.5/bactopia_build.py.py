from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bactopia_Build_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_build.py", base_command=["bactopia-build.py"], inputs=[ToolInput(tag="in_ext", input_type=String(optional=True), prefix="--ext", doc=InputDocumentation(doc="Extension of the Conda environment files. Default: .yml")), ToolInput(tag="in_env_name", input_type=String(optional=True), prefix="--envname", doc=InputDocumentation(doc="Build Conda environment with the given name")), ToolInput(tag="in_default", input_type=Boolean(optional=True), prefix="--default", doc=InputDocumentation(doc="Builds Conda environments to the default Bactopia")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing Conda environments.")), ToolInput(tag="in_is_bac_topia", input_type=Boolean(optional=True), prefix="--is_bactopia", doc=InputDocumentation(doc="This is an automated call by bactopia not a user")), ToolInput(tag="in_include_tools", input_type=Boolean(optional=True), prefix="--include_tools", doc=InputDocumentation(doc="Builds Conda environments for Bactopia tools as well.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print debug related text.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Only critical errors will be printed.")), ToolInput(tag="in_location_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--max_retry INT    Maximum times to attempt creating Conda environment."))], outputs=[], container="quay.io/biocontainers/bactopia:1.6.5--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Build_Py_V0_1_0().translate("wdl")

