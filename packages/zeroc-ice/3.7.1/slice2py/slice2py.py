from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, String

Slice2Py_V0_1_0 = CommandToolBuilder(tool="slice2py", base_command=["slice2py"], inputs=[ToolInput(tag="in_uname", input_type=Boolean(optional=True), prefix="-UNAME", doc=InputDocumentation(doc="Remove any definition for NAME.")), ToolInput(tag="in_idir", input_type=Boolean(optional=True), prefix="-IDIR", doc=InputDocumentation(doc="Put DIR in the include file search path.")), ToolInput(tag="in_print_preprocessor_output", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Print preprocessor output on stdout.")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Create files in the directory DIR.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debug messages.")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="--depend", doc=InputDocumentation(doc="Generate Makefile dependencies.")), ToolInput(tag="in_depend_xml", input_type=Boolean(optional=True), prefix="--depend-xml", doc=InputDocumentation(doc="Generate dependencies in XML format.")), ToolInput(tag="in_depend_file", input_type=File(optional=True), prefix="--depend-file", doc=InputDocumentation(doc="Write dependencies to FILE instead of standard output.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Generate code for Slice definitions in included files.")), ToolInput(tag="in_checksum", input_type=Boolean(optional=True), prefix="--checksum", doc=InputDocumentation(doc="Generate checksums for Slice definitions.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prepend filenames of Python modules with PREFIX."))], outputs=[ToolOutput(tag="out_depend_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_depend_file", type_hint=File()), doc=OutputDocumentation(doc="Write dependencies to FILE instead of standard output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slice2Py_V0_1_0().translate("wdl", allow_empty_container=True)

