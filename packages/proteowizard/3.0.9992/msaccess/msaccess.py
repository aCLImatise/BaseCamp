from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int, String

Msaccess_V0_1_0 = CommandToolBuilder(tool="msaccess", base_command=["msaccess"], inputs=[ToolInput(tag="in_arg_text_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --filelist ] arg    : text file containing filenames to process")), ToolInput(tag="in_arg_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outdir ] arg (=.) : output directory")), ToolInput(tag="in_arg_configuration_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --config ] arg      : configuration file (containing settings as\noptionName=value)")), ToolInput(tag="in_arg_execute_command", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="[ --exec ] arg        : execute command, e.g --exec 'tic mz=409-412'")), ToolInput(tag="in_filter", input_type=Int(optional=True), prefix="--filter", doc=InputDocumentation(doc=": add a spectrum list filter, e.g. --filter='msLevel\n[2,3]'")), ToolInput(tag="in_print_progress_messages", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]         : print progress messages")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="FILTER OPTIONS")), ToolInput(tag="in_metadata", input_type=String(), position=0, doc=InputDocumentation(doc="(write file-level metadata)"))], outputs=[ToolOutput(tag="out_arg_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_arg_output_directory", type_hint=File()), doc=OutputDocumentation(doc="[ --outdir ] arg (=.) : output directory"))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msaccess_V0_1_0().translate("wdl")

