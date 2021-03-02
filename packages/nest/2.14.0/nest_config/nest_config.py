from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nest_Config_V0_1_0 = CommandToolBuilder(tool="nest_config", base_command=["nest-config"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="NEST install prefix for architecture-independent files")), ToolInput(tag="in_exec_prefix", input_type=Boolean(optional=True), prefix="--exec-prefix", doc=InputDocumentation(doc="NEST install prefix for architecture-dependent files")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="print library linking information")), ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc="print pre-processor and compiler flags")), ToolInput(tag="in_includes", input_type=Boolean(optional=True), prefix="--includes", doc=InputDocumentation(doc="print includes")), ToolInput(tag="in_compiler", input_type=Boolean(optional=True), prefix="--compiler", doc=InputDocumentation(doc="print the compiler used to compile NEST")), ToolInput(tag="in_static_libraries", input_type=Boolean(optional=True), prefix="--static-libraries", doc=InputDocumentation(doc="print 'ON' if configured for static libraries, 'OFF' otherwise")), ToolInput(tag="in_docdir", input_type=Boolean(optional=True), prefix="--docdir", doc=InputDocumentation(doc="print the relative path (to prefix) to the installed documentation")), ToolInput(tag="in_datadir", input_type=Boolean(optional=True), prefix="--datadir", doc=InputDocumentation(doc="print the relative path (to prefix) to the installed data")), ToolInput(tag="in_libdir", input_type=Boolean(optional=True), prefix="--libdir", doc=InputDocumentation(doc="print the relative path (to prefix) to the installed libraries"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nest_Config_V0_1_0().translate("wdl", allow_empty_container=True)

