from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Assemblerflow_Build_V0_1_0 = CommandToolBuilder(tool="assemblerflow_build", base_command=["assemblerflow", "build"], inputs=[ToolInput(tag="in_tasks", input_type=String(optional=True), prefix="--tasks", doc=InputDocumentation(doc="Space separated tasks of the pipeline")), ToolInput(tag="in_recipe", input_type=String(optional=True), prefix="--recipe", doc=InputDocumentation(doc="Use one of the available recipes")), ToolInput(tag="in_name_pipeline_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the pipeline file")), ToolInput(tag="in_provide_name_your", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Provide a name for your pipeline.")), ToolInput(tag="in_pipeline_only", input_type=Boolean(optional=True), prefix="--pipeline-only", doc=InputDocumentation(doc="Write only the pipeline files and not the templates,\nbin, and lib folders.")), ToolInput(tag="in_no_depend_ecy", input_type=Boolean(optional=True), prefix="--no-dependecy", doc=InputDocumentation(doc="Do not automatically add dependencies to the pipeline.")), ToolInput(tag="in_check_pipeline", input_type=Boolean(optional=True), prefix="--check-pipeline", doc=InputDocumentation(doc="Check only the validity of the pipeline string and")), ToolInput(tag="in_short_list", input_type=Boolean(optional=True), prefix="--short-list", doc=InputDocumentation(doc="Print a short list of the currently available\nprocesses\n")), ToolInput(tag="in_exit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L, --detailed-list   Print a detailed description for all the currently"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assemblerflow_Build_V0_1_0().translate("wdl", allow_empty_container=True)

