from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Proteinortho_History_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho_history.pl", base_command=["proteinortho_history.pl"], inputs=[ToolInput(tag="in_project", input_type=Directory(optional=True), prefix="-project", doc=InputDocumentation(doc="The project name (as specified in proteinortho with -project) (default:auto detect in the current directory)")), ToolInput(tag="in_no_quotemeta", input_type=Boolean(optional=True), prefix="-noquotemeta", doc=InputDocumentation(doc="(optional) If set, then the query will not be escaped.")), ToolInput(tag="in_notable_format", input_type=Boolean(optional=True), prefix="-notableformat", doc=InputDocumentation(doc="(optional) If -step= is set too, then the tables are not formatted and a plain csv is printed instead.")), ToolInput(tag="in_delim", input_type=Boolean(optional=True), prefix="-delim", doc=InputDocumentation(doc="=                                         (optional) Defines the delimiter character for spliting the query (if you want to search for 2 genes/proteins)")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="A string of a single gene/protein or 2 separated by a comma or a whitespace (the input is escaped using quotemeta, use -noquotemeta to avoid this)"))], outputs=[], container="quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_History_Pl_V0_1_0().translate("wdl")

