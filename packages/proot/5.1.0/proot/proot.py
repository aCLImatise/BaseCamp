from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Proot_V0_1_0 = CommandToolBuilder(tool="proot", base_command=["proot"], inputs=[ToolInput(tag="in_path_use_path", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="*path*     Use *path* as the new guest root file-system, default is /.")), ToolInput(tag="in_path_make_accessible", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="*path*     Make the content of *path* accessible in the guest rootfs.")), ToolInput(tag="in_command_execute_programs", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="*command*  Execute guest programs through QEMU as specified by *command*.")), ToolInput(tag="in_path_set_directory", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="*path*     Set the initial working directory to *path*.")), ToolInput(tag="in_value_set_level", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="*value*    Set the level of debug information to *value*.")), ToolInput(tag="in_print_version_copyright", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Print version, copyright, license and contact, then exit.")), ToolInput(tag="in_string_make_kernel_appear", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="*string*   Make current kernel appear as kernel release *string*.")), ToolInput(tag="in_make_user_appear", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="Make current user appear as 'root' and fake its privileges.")), ToolInput(tag="in_string_make_user_appear", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="*string*   Make current user and group appear as *string* 'uid:gid'.")), ToolInput(tag="in_var_9", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="*path*     Alias: -r *path* + a couple of recommended -b.")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="*path*     Alias: -0 -r *path* + a couple of recommended -b."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proot_V0_1_0().translate("wdl", allow_empty_container=True)

