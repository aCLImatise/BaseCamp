from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Nf_Core_Bump_Version_V0_1_0 = CommandToolBuilder(tool="nf_core_bump_version", base_command=["nf-core", "bump-version"], inputs=[ToolInput(tag="in_next_flow", input_type=Boolean(optional=True), prefix="--nextflow", doc=InputDocumentation(doc="Bump required nextflow version instead of pipeline version")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_version", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Bump_Version_V0_1_0().translate("wdl")

