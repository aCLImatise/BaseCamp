from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Resgen_V0_1_0 = CommandToolBuilder(tool="resgen", base_command=["resgen"], inputs=[ToolInput(tag="in_compile", input_type=File(optional=True), prefix="-compile", doc=InputDocumentation(doc=", /compile\ntakes a list of .resX or .txt files to convert to .resources files\nin one bulk operation, replacing .ext with .resources for the\noutput file name (if not set).")), ToolInput(tag="in_use_sourcepath", input_type=Boolean(optional=True), prefix="-usesourcepath", doc=InputDocumentation(doc=", /useSourcePath\nto resolve relative file paths, use the directory of the resource\nfile as current directory.")), ToolInput(tag="in_define", input_type=Boolean(optional=True), prefix="-define", doc=InputDocumentation(doc=", /define:SYMBOL1,SYMBOL2\ntakes a comma-separated list of symbols that control conditional\ninclusion of resources file. The source file needs to be in\nthe '.txt' format.\nResources enclosed with #ifdef SYMBOL1 ... #endif directives\nwill be included in the destination file when SYMBOL1 has\nbeen specified using /define option.\nResources enclosed with #if ! SYMBOL2 ... #endif directives\nwill be included only if SYMBOL2 has NOT been specified.\n")), ToolInput(tag="in_source_do_text", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_compile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compile", type_hint=File()), doc=OutputDocumentation(doc=", /compile\ntakes a list of .resX or .txt files to convert to .resources files\nin one bulk operation, replacing .ext with .resources for the\noutput file name (if not set)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Resgen_V0_1_0().translate("wdl", allow_empty_container=True)

