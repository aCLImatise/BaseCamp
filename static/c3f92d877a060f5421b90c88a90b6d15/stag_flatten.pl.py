from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Stag_Flatten_Pl_V0_1_0 = CommandToolBuilder(tool="stag_flatten.pl", base_command=["stag-flatten.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext\nxml assumed as default")), ToolInput(tag="in_column_colcolcol_name", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="|column COL1,COL2,COL3,..\nthe name of the columns/elements to write out\nthis can be specified either with multiple -c arguments, or with a\ncomma-seperated (no spaces) list of column (terminal node) names\nafter a single -c")), ToolInput(tag="in_nestif_set_be", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="|nest\nif set, then the output will be a compress repeating values into the\nsame row; each cell in the table will be enclosed by {}, and will\ncontain a comma-delimited set of values"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Flatten_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

