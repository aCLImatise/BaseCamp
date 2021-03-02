from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ri_V0_1_0 = CommandToolBuilder(tool="ri", base_command=["ri"], inputs=[ToolInput(tag="in__interactive_interactive", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=", --[no-]interactive           In interactive mode you can repeatedly\nlook up methods with autocomplete.")), ToolInput(tag="in__show_documentation", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=", --[no-]all                   Show all documentation for a class or")), ToolInput(tag="in_synonym_for_", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="Synonym for --no-pager")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="--width", doc=InputDocumentation(doc="Set the width of the output.")), ToolInput(tag="in_server", input_type=Boolean(optional=True), prefix="--server", doc=InputDocumentation(doc="[PORT]              Run RDoc server on the given port.\nThe default port is 8214.")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Uses the selected formatter. The default\nformatter is bs for paged output and ansi\notherwise. Valid formatters are:\nansi bs markdown rdoc")), ToolInput(tag="in_doc_dir", input_type=String(optional=True), prefix="--doc-dir", doc=InputDocumentation(doc="List of directories from which to source\ndocumentation in addition to the standard\ndirectories.  May be repeated.")), ToolInput(tag="in_no_standard_docs", input_type=Boolean(optional=True), prefix="--no-standard-docs", doc=InputDocumentation(doc="Do not include documentation from\nthe Ruby standard library, site_lib,\ninstalled gems, or ~/.rdoc.\nUse with --doc-dir")), ToolInput(tag="in_dump", input_type=File(optional=True), prefix="--dump", doc=InputDocumentation(doc="Dumps data from an ri cache or data file")), ToolInput(tag="in_module_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-l, --[no-]list                  List classes ri knows about.")), ToolInput(tag="in_library_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Defaults to true."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ri_V0_1_0().translate("wdl", allow_empty_container=True)

