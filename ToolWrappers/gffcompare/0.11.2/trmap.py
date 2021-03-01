from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Trmap_V0_1_0 = CommandToolBuilder(tool="trmap", base_command=["trmap"], inputs=[ToolInput(tag="in_write_output_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="write output to <outfile> instead of stdout")), ToolInput(tag="in_report_percentages_withoutclassification", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="report only simple reference overlap percentages, without\nclassification (one line per query)")), ToolInput(tag="in_strict_match", input_type=Boolean(optional=True), prefix="--strict-match", doc=InputDocumentation(doc=": when intron chains match, the '=' overlap code is assigned\nwhen all exons also match, otherwise assign the '~' code\n")), ToolInput(tag="in_ref_gff", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trmap_V0_1_0().translate("wdl", allow_empty_container=True)

