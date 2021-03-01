from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Textsearch_V0_1_0 = CommandToolBuilder(tool="_textsearch", base_command=["_textsearch"], inputs=[ToolInput(tag="in_case_sensitive", input_type=Boolean(optional=True), prefix="-casesensitive", doc=InputDocumentation(doc="boolean    [N] Do a case-sensitive search")), ToolInput(tag="in_html", input_type=Boolean(optional=True), prefix="-html", doc=InputDocumentation(doc="boolean    [N] Format output as an HTML table")), ToolInput(tag="in_only", input_type=Boolean(optional=True), prefix="-only", doc=InputDocumentation(doc="boolean    [N] This is a way of shortening the command\nline if you only want a few things to be\ndisplayed. Instead of specifying:\n'-nohead -noname -nousa -noacc -nodesc'\nto get only the name output, you can specify\n'-only -name'")), ToolInput(tag="in_heading", input_type=Boolean(optional=True), prefix="-heading", doc=InputDocumentation(doc="boolean    [@(!$(only))] Display column headings")), ToolInput(tag="in_usa", input_type=Boolean(optional=True), prefix="-usa", doc=InputDocumentation(doc="boolean    [@(!$(only))] Display the USA of the")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="boolean    [@(!$(only))] Display 'name' column")), ToolInput(tag="in_description", input_type=Boolean(optional=True), prefix="-description", doc=InputDocumentation(doc="boolean    [@(!$(only))] Display 'description' column")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="-accession          boolean    [@(!$(only))] Display 'accession' column"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Textsearch_V0_1_0().translate("wdl", allow_empty_container=True)

