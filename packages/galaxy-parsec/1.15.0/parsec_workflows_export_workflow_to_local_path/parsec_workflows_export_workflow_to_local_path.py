from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Workflows_Export_Workflow_To_Local_Path_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_export_workflow_to_local_path", base_command=["parsec", "workflows", "export_workflow_to_local_path"], inputs=[ToolInput(tag="in_use_default_filename", input_type=Boolean(optional=True), prefix="--use_default_filename", doc=InputDocumentation(doc="If the use_default_name parameter is True, the\nexported file will be saved as\nfile_local_path/Galaxy-Workflow-%s.ga, where %s is\nthe workflow name. If use_default_name is False,\nfile_local_path is assumed to contain the full file\npath including filename.  [default: True]")), ToolInput(tag="in_file_local_path", input_type=String(), position=0, doc=InputDocumentation(doc="Exports a workflow in JSON format to a given local path.")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Export_Workflow_To_Local_Path_V0_1_0().translate("wdl")

