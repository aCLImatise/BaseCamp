from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Netclass_V0_1_0 = CommandToolBuilder(tool="netClass", base_command=["netClass"], inputs=[ToolInput(tag="in_t_new_r", input_type=String(optional=True), prefix="-tNewR", doc=InputDocumentation(doc="- Dir of chrN.out.spec files, with RepeatMasker .out format\nlines describing lineage specific repeats in target")), ToolInput(tag="in_q_new_r", input_type=String(optional=True), prefix="-qNewR", doc=InputDocumentation(doc="- Dir of chrN.out.spec files for query")), ToolInput(tag="in_no_ar", input_type=Boolean(optional=True), prefix="-noAr", doc=InputDocumentation(doc="- Don't look for ancient repeats")), ToolInput(tag="in_q_repeats", input_type=String(optional=True), prefix="-qRepeats", doc=InputDocumentation(doc="- table name for query repeats in place of rmsk")), ToolInput(tag="in_t_repeats", input_type=String(optional=True), prefix="-tRepeats", doc=InputDocumentation(doc="- table name for target repeats in place of rmsk\n- for example: -tRepeats=windowmaskerSdust")), ToolInput(tag="in_lift_q", input_type=File(optional=True), prefix="-liftQ", doc=InputDocumentation(doc="- Lift in.net's query coords to chrom-level using\nfile.lft (for accessing chrom-level coords in qDb)")), ToolInput(tag="in_lift_t", input_type=File(optional=True), prefix="-liftT", doc=InputDocumentation(doc="- Lift in.net's target coords to chrom-level using\nfile.lft (for accessing chrom-level coords in tDb)\n")), ToolInput(tag="in_in_dotnet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tdb", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_qdb", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dotnet", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Netclass_V0_1_0().translate("wdl", allow_empty_container=True)

