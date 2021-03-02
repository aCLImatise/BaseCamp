from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Mv_V0_1_0 = CommandToolBuilder(tool="mv", base_command=["mv"], inputs=[ToolInput(tag="in_backup", input_type=Boolean(optional=True), prefix="--backup", doc=InputDocumentation(doc="[=CONTROL]       make a backup of each existing destination file")), ToolInput(tag="in__backup_accept", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="like --backup but does not accept an argument")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="do not prompt before overwriting")), ToolInput(tag="in_interactive", input_type=Boolean(optional=True), prefix="--interactive", doc=InputDocumentation(doc="prompt before overwrite")), ToolInput(tag="in_no_clobber", input_type=Boolean(optional=True), prefix="--no-clobber", doc=InputDocumentation(doc="do not overwrite an existing file")), ToolInput(tag="in_strip_trailing_slashes", input_type=Boolean(optional=True), prefix="--strip-trailing-slashes", doc=InputDocumentation(doc="remove any trailing slashes from each SOURCE")), ToolInput(tag="in_target_directory", input_type=Directory(optional=True), prefix="--target-directory", doc=InputDocumentation(doc="move all SOURCE arguments into DIRECTORY")), ToolInput(tag="in_no_target_directory", input_type=Boolean(optional=True), prefix="--no-target-directory", doc=InputDocumentation(doc="treat DEST as a normal file")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc="move only when the SOURCE file is newer\nthan the destination file or when the\ndestination file is missing")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="explain what is being done")), ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="--context", doc=InputDocumentation(doc="set SELinux security context of destination\nfile to default type")), ToolInput(tag="in_argument", input_type=String(), position=0, doc=InputDocumentation(doc="-S, --suffix=SUFFIX          override the usual backup suffix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mv_V0_1_0().translate("wdl", allow_empty_container=True)

