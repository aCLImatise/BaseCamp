from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Nf_Core_Schema_Build_V0_1_0 = CommandToolBuilder(tool="nf_core_schema_build", base_command=["nf-core", "schema", "build"], inputs=[ToolInput(tag="in_no_prompts", input_type=Boolean(optional=True), prefix="--no-prompts", doc=InputDocumentation(doc="Do not confirm changes, just update parameters and exit")), ToolInput(tag="in_web_only", input_type=Boolean(optional=True), prefix="--web-only", doc=InputDocumentation(doc="Skip building using Nextflow config, just launch the web tool")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Customise the builder URL (for development work)")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Schema_Build_V0_1_0().translate("wdl")

