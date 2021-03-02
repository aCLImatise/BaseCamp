from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Wb_Command_V0_1_0 = CommandToolBuilder(tool="wb_command", base_command=["wb_command"], inputs=[ToolInput(tag="in_arguments_help", input_type=Boolean(optional=True), prefix="-arguments-help", doc=InputDocumentation(doc="explain the format of subcommand help info")), ToolInput(tag="in_global_options", input_type=Boolean(optional=True), prefix="-global-options", doc=InputDocumentation(doc="display options that can be added to any command")), ToolInput(tag="in_parallel_help", input_type=Boolean(optional=True), prefix="-parallel-help", doc=InputDocumentation(doc="details on how wb_command uses parallelization")), ToolInput(tag="in_cif_ti_help", input_type=Boolean(optional=True), prefix="-cifti-help", doc=InputDocumentation(doc="explain the cifti file format and related terms")), ToolInput(tag="in_gift_i_help", input_type=Boolean(optional=True), prefix="-gifti-help", doc=InputDocumentation(doc="explain the gifti file format (metric, surface)")), ToolInput(tag="in_volume_help", input_type=Boolean(optional=True), prefix="-volume-help", doc=InputDocumentation(doc="explain volume files, including label volumes")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="show extended version information")), ToolInput(tag="in_list_commands", input_type=Boolean(optional=True), prefix="-list-commands", doc=InputDocumentation(doc="list all processing subcommands")), ToolInput(tag="in_list_deprecated_commands", input_type=Boolean(optional=True), prefix="-list-deprecated-commands", doc=InputDocumentation(doc="list deprecated subcommands")), ToolInput(tag="in_all_commands_help", input_type=Boolean(optional=True), prefix="-all-commands-help", doc=InputDocumentation(doc="show all processing subcommands and their help\ninfo - VERY LONG")), ToolInput(tag="in_linux", input_type=String(), position=0, doc=InputDocumentation(doc="Information options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wb_Command_V0_1_0().translate("wdl", allow_empty_container=True)

