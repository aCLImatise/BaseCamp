from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

H5Redeploy_V0_1_0 = CommandToolBuilder(tool="h5redeploy", base_command=["h5redeploy"], inputs=[ToolInput(tag="in_echo", input_type=Boolean(optional=True), prefix="-echo", doc=InputDocumentation(doc="Show all the shell commands executed")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="No prompt, just do it")), ToolInput(tag="in_prefix", input_type=Directory(optional=True), prefix="-prefix", doc=InputDocumentation(doc="New directory to find HDF5 lib/ and include/\nsubdirectories [default: current directory]")), ToolInput(tag="in_exec_prefix", input_type=Directory(optional=True), prefix="-exec-prefix", doc=InputDocumentation(doc="New directory to find HDF5 lib/\nsubdirectory [default: <prefix>]")), ToolInput(tag="in_libdir", input_type=Directory(optional=True), prefix="-libdir", doc=InputDocumentation(doc="New directory for the HDF5 lib directory\n[default: <exec-prefix>/lib]")), ToolInput(tag="in_includedir", input_type=Directory(optional=True), prefix="-includedir", doc=InputDocumentation(doc="New directory for the HDF5 header files\n[default: <prefix>/include]")), ToolInput(tag="in_tool", input_type=Directory(optional=True), prefix="-tool", doc=InputDocumentation(doc="Tool to update. TOOL must be in the current\ndirectory and writable. [default: h5cc h5pcc h5fc h5pfc h5c++]")), ToolInput(tag="in_show", input_type=Boolean(optional=True), prefix="-show", doc=InputDocumentation(doc="Show the commands without executing them"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Redeploy_V0_1_0().translate("wdl", allow_empty_container=True)

