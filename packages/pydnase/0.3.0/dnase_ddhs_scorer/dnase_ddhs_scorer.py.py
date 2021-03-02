from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnase_Ddhs_Scorer_Py_V0_1_0 = CommandToolBuilder(tool="dnase_ddhs_scorer.py", base_command=["dnase_ddhs_scorer.py"], inputs=[ToolInput(tag="in_low_ram_mode", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="low RAM mode (disables caching) (Default: False)")), ToolInput(tag="in_atacseq_mode_default", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="ATAC-seq mode (default: False)")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="The set of BED files you wish to annotate with dDHS scores")), ToolInput(tag="in_treat_dhs", input_type=String(), position=1, doc=InputDocumentation(doc="The DHSs belonging to the Treatment")), ToolInput(tag="in_control_dhs", input_type=String(), position=2, doc=InputDocumentation(doc="The DHSs belonging to the control")), ToolInput(tag="in_reads_treat", input_type=String(), position=3, doc=InputDocumentation(doc="The BAM file containing the Treatment DNase-seq data")), ToolInput(tag="in_reads_control", input_type=String(), position=4, doc=InputDocumentation(doc="The BAM file containing the Control DNase-seq data")), ToolInput(tag="in_output", input_type=String(), position=5, doc=InputDocumentation(doc="filename to write the output to"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnase_Ddhs_Scorer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

