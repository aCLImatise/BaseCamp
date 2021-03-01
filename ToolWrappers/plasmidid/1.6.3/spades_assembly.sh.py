from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, String

Spades_Assembly_Sh_V0_1_0 = CommandToolBuilder(tool="spades_assembly.sh", base_command=["spades_assembly.sh"], inputs=[ToolInput(tag="in_var_0", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="file (mandatory)")), ToolInput(tag="in_var_1", input_type=Int(optional=True), prefix="-P", doc=InputDocumentation(doc="file (mandatory)")), ToolInput(tag="in_supplied_numbers_sepparated", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc=", supplied as numbers sepparated by number or one flag per number, default: 21,33,55,77,99,127")), ToolInput(tag="in_directory_optional", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="name")), ToolInput(tag="in_name_mandatory", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name (mandatory)")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_look_supplied_term", input_type=Directory(optional=True), prefix="-q", doc=InputDocumentation(doc=": look for files in a folder SUPPLIED with 'paired' term")), ToolInput(tag="in_mode_remove_folders", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="mode: remove unnecesary temporary folders")), ToolInput(tag="in__default", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc=", default 1")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Assembly_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

