from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Mulled_Update_Singularity_Containers_V0_1_0 = CommandToolBuilder(tool="mulled_update_singularity_containers", base_command=["mulled-update-singularity-containers"], inputs=[ToolInput(tag="in_containers", input_type=Array(t=String(), optional=True), prefix="--containers", doc=InputDocumentation(doc="Containers to be generated. If the number of\ncontainers is large, it may be simpler to use the\n--containers-list option.")), ToolInput(tag="in_container_list", input_type=File(optional=True), prefix="--container-list", doc=InputDocumentation(doc="Name of file containing list of containers to be\ngenerated. Alternative to --containers.")), ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="File path where newly-built Singularity containers are\nplaced.")), ToolInput(tag="in_installation", input_type=File(optional=True), prefix="--installation", doc=InputDocumentation(doc="File path of Singularity installation.")), ToolInput(tag="in_no_sudo", input_type=Boolean(optional=True), prefix="--no-sudo", doc=InputDocumentation(doc="Build containers without sudo.")), ToolInput(tag="in_testing", input_type=File(optional=True), prefix="--testing", doc=InputDocumentation(doc="Performs testing automatically - a name for the output\nfile should be provided. (Alternatively, testing may\nbe done using the separate testing tool.\n"))], outputs=[ToolOutput(tag="out_testing", output_type=File(optional=True), selector=InputSelector(input_to_select="in_testing", type_hint=File()), doc=OutputDocumentation(doc="Performs testing automatically - a name for the output\nfile should be provided. (Alternatively, testing may\nbe done using the separate testing tool.\n"))], container="quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mulled_Update_Singularity_Containers_V0_1_0().translate("wdl")

