from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Nf_Core_Schema_Validate_V0_1_0 = CommandToolBuilder(tool="nf_core_schema_validate", base_command=["nf-core", "schema", "validate"], inputs=[ToolInput(tag="in_pipeline_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_json_params_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Schema_Validate_V0_1_0().translate("wdl")

