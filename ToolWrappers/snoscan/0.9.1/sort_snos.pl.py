from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Sort_Snos_Pl_V0_1_0 = CommandToolBuilder(tool="sort_snos.pl", base_command=["sort-snos.pl"], inputs=[ToolInput(tag="in_sort_snos_position_hit", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc=":  sort snos by position of hit in query sequence")), ToolInput(tag="in_sort_snos_position_remove", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc=":  sort snos by position & Remove lower-scoring duplicate hits\n(both start & end bounds must match")), ToolInput(tag="in_same_r_only", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=":  same as -R, but only start bound must match to count as duplicate")), ToolInput(tag="in_sort_snos_mapped", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc=":  sort snos, output only hits to Mapped sites")), ToolInput(tag="in_sort_snos_unmapped", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc=":  sort snos, output only hits to Unmapped sites")), ToolInput(tag="in_sort_snos_output", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc=":  sort snos, output only top <int> hits per meth site (def=50)")), ToolInput(tag="in_sort_snos_require", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc=":  sort snos, require minimum score")), ToolInput(tag="in_sort_snos_include", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=":  sort snos, don't include hits _over_ max <score>")), ToolInput(tag="in_extract_only_snos", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc=":  Extract only snos with <expr> in header line")), ToolInput(tag="in_sort__output", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=":  Don't sort -- just filter & output in same order")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_snorna_hits_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Snos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

