from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Boolean

Nmrml2Isa_V0_1_0 = CommandToolBuilder(tool="nmrml2isa", base_command=["nmrml2isa"], inputs=[ToolInput(tag="in_input_folder_archive", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input folder or archive containing nmrML files")), ToolInput(tag="in_folder_new_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="out folder (a new directory will be created here)")), ToolInput(tag="in_study_identifier_mtblsxxx", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="study identifier (e.g. MTBLSxxx)")), ToolInput(tag="in_additional_user_provided", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="additional user provided metadata (JSON or XLSX\nformat)")), ToolInput(tag="in_launch_different_processes", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="launch different processes for parsing")), ToolInput(tag="in_warning_control_python", input_type=String(optional=True), prefix="-W", doc=InputDocumentation(doc="warning control (with python default behaviour)")), ToolInput(tag="in_directory_containing_files", input_type=Directory(optional=True), prefix="-t", doc=InputDocumentation(doc="directory containing default template files")), ToolInput(tag="in_show_more_default", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show more output (default if progressbar2 is not\ninstalled)")), ToolInput(tag="in_do_show_output", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="do not show any output"))], outputs=[ToolOutput(tag="out_folder_new_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_folder_new_directory", type_hint=File()), doc=OutputDocumentation(doc="out folder (a new directory will be created here)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nmrml2Isa_V0_1_0().translate("wdl", allow_empty_container=True)

