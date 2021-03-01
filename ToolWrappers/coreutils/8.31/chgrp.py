from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Chgrp_V0_1_0 = CommandToolBuilder(tool="chgrp", base_command=["chgrp"], inputs=[ToolInput(tag="in_changes", input_type=Boolean(optional=True), prefix="--changes", doc=InputDocumentation(doc="like verbose but report only when a change is made")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress most error messages")), ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output a diagnostic for every file processed")), ToolInput(tag="in_dereference", input_type=Boolean(optional=True), prefix="--dereference", doc=InputDocumentation(doc="affect the referent of each symbolic link (this is\nthe default), rather than the symbolic link itself")), ToolInput(tag="in_no_preserve_root", input_type=Boolean(optional=True), prefix="--no-preserve-root", doc=InputDocumentation(doc="do not treat '/' specially (the default)")), ToolInput(tag="in_preserve_root", input_type=Boolean(optional=True), prefix="--preserve-root", doc=InputDocumentation(doc="fail to operate recursively on '/'")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="use RFILE's group rather than specifying a\nGROUP value")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="operate on files and directories recursively")), ToolInput(tag="in_command_line_argument", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="if a command line argument is a symbolic link\nto a directory, traverse it")), ToolInput(tag="in_traverse_symbolic_link", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="traverse every symbolic link to a directory")), ToolInput(tag="in_encountered", input_type=String(), position=0, doc=InputDocumentation(doc="-P                     do not traverse any symbolic links (default)"))], outputs=[ToolOutput(tag="out_verbose", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="output a diagnostic for every file processed"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chgrp_V0_1_0().translate("wdl", allow_empty_container=True)

