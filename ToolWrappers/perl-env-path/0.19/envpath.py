from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Envpath_V0_1_0 = CommandToolBuilder(tool="envpath", base_command=["envpath"], inputs=[ToolInput(tag="in_append_token_path", input_type=File(optional=True), prefix="-A", doc=InputDocumentation(doc="Append TOKEN to the path variable named 'VAR'")), ToolInput(tag="in_change_olddir_newdir", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="=newdir     Change <olddir> to <newdir> within 'VAR'")), ToolInput(tag="in_prepend_token_path", input_type=File(optional=True), prefix="-P", doc=InputDocumentation(doc="Prepend TOKEN to the path variable named 'VAR'")), ToolInput(tag="in_token_insert_token", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc=",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR")), ToolInput(tag="in_list_specified_pathvars", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="[VAR]             List specified pathvar(s) in one-entry-per-line fmt")), ToolInput(tag="in_remove_entries_exist", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Remove entries which don't exist")), ToolInput(tag="in_remove_specified_dir", input_type=File(optional=True), prefix="-R", doc=InputDocumentation(doc="Remove specified dir from path")), ToolInput(tag="in_print_specified_pathvars", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="[VAR]             Print specified pathvars in form suitable for `eval`")), ToolInput(tag="in_remove_redundant_entries", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Remove redundant entries from path")), ToolInput(tag="in_like__path", input_type=File(optional=True), prefix="-W", doc=InputDocumentation(doc="Like 'whence' ksh builtin - look for 'file' on PATH"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Envpath_V0_1_0().translate("wdl", allow_empty_container=True)

